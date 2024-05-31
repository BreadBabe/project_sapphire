using System;
using Ink.Runtime;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;
using UnityEditor.Rendering;
//using UnityEditor.Experimental.GraphView;
//using Ink.UnityIntegration;

public class NoahDialogueManager : MonoBehaviour
{
    public static event Action<Story> OnCreateStory;
    [SerializeField] private AudioSource typingAudioSource;

    [SerializeField] private float typingSpeed;

    [SerializeField] internal TextAsset inkJSONAsset = null;
    
    private Story story;

    [SerializeField] private GameObject dialoguebox = null;
    [SerializeField] private GameObject choicebox = null;

    [SerializeField] private Text textPrefab = null;

    [SerializeField] private Button buttonPrefab = null;

    [SerializeField] private GameObject Character;
    [SerializeField] private GameObject Audio;
    [SerializeField] private Button startButton;
    [SerializeField] private Image startButtonImage;

    private SceneChanger SceneChanger = new SceneChanger();

    private string charName;
    private string charEmotion;
    private string charSound;


    [SerializeField] private GameObject lovemeterShutter = null;

    private float loveAmount;

    private Text storyText;
    private string currentText;
    private bool isTyping;
    internal bool firstDialogue = true;

    //Used for drink mix success calculation // DEFAULT: 0
    int mixingScore = 0;

    //Get Set
    public TextAsset InkFile
    {
        get {  return inkJSONAsset; }
        set { inkJSONAsset = value; }
    }
    public void StartStoryAfterButtonClick()
    {
        // Enable the LunaInkManager script to start its logic
        dialoguebox.SetActive(true); // Show the dialogue box
        choicebox.SetActive(true); // Show the choice box
        Character.SetActive(true);
        enabled = true;
        RemoveChildren();
        // Initialize the story and display the initial dialogue
        StartStory();
        startButton.interactable = false;
        
    }


    void StartStory()
    {
        story = new Story(inkJSONAsset.text);
        charName = (string)story.variablesState["charName"];
        charEmotion = (string)story.variablesState["charEmotion"];


        RefreshView();
    }

    void RefreshView()
    {
        //Debug.Log("pizza");
        Debug.Log(PlayerPrefs.GetInt("love") + loveAmount);

        RemoveChildren();

        string text = story.Continue().Trim();
        currentText = "";
        isTyping = true;
        CreateContentView(text); // Call CreateContentView with the obtained text
    }



    void OnClickChoiceButton(Choice choice)
    {

        story.ChooseChoiceIndex(choice.index);
        RefreshView();
    }

    void CreateContentView(string text)
    {
        storyText = Instantiate(textPrefab) as Text;
        storyText.text = ""; // Start with empty text
        storyText.transform.SetParent(dialoguebox.transform, false);
        
        // get variables from the ink dialogue script for dynamic sprite etc grabbing
        charEmotion = (string)story.variablesState["charEmotion"];

        // fetch correct sprite for character from resources
        Sprite spr = Resources.Load($"{charName}{charEmotion}", typeof(Sprite)) as Sprite;
        Character.GetComponent<Image>().sprite = spr;

        // fetch appropriate sound clip from resources from resources
        charSound = (string)story.variablesState["charSound"];
        AudioClip soundEffect = Resources.Load($"{charName}{charSound}", typeof(AudioClip)) as AudioClip;
        Audio.GetComponent<AudioSource>().clip = soundEffect;
        Audio.GetComponent<AudioSource>().Play();

        // update script variable
        loveAmount = (int)story.variablesState["loveAmount"];

        StartCoroutine(TypeText(text)); // Start typing effect
    }



    Button CreateChoiceView(string text)
    {
        Button choice = Instantiate(buttonPrefab) as Button;
        choice.transform.SetParent(choicebox.transform, false);

        Text choiceText = choice.GetComponentInChildren<Text>();
        choiceText.text = text;

        choiceText.fontSize = 32; // Set the font size as desired

        HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
        layoutGroup.childForceExpandHeight = false;

        // Adjust the spacing between buttons (in pixels)
        layoutGroup.spacing = 1; // Change this value as needed

        return choice;
    }



    void RemoveChildren()
    {
        foreach (Transform child in dialoguebox.transform)
        {
            Destroy(child.gameObject);
        }
        foreach (Transform child in choicebox.transform)
        {
            Destroy(child.gameObject);
        }
    }

    IEnumerator TypeText(string text)
    {
        float timePerCharacter = 1f / typingSpeed; // Calculate time per character based on typing speed
        foreach (char letter in text)
        {
            currentText += letter;
            storyText.text = currentText;
            if (typingAudioSource != null)
            {
                typingAudioSource.Play();
            }
            yield return new WaitForSeconds(timePerCharacter); // Wait for timePerCharacter seconds per character
        }

        isTyping = false;
        DisplayChoices(); // Display choices after typing is complete
    }





    void DisplayChoices()
    {
        if (!story.canContinue && !isTyping)
        {
            if (story.currentChoices.Count > 0)
            {
                // when choices are avilable, create them
                for (int i = 0; i < story.currentChoices.Count; i++)
                {
                    Choice choice = story.currentChoices[i];
                    Button button = CreateChoiceView(choice.text.Trim());
                    button.onClick.AddListener(() => OnClickChoiceButton(choice));
                }
            }
            else
            {
                // add love to global playerpreef
                int newLove = PlayerPrefs.GetInt("love") + (int)loveAmount;
                PlayerPrefs.SetInt("love", newLove);


                StartCoroutine(LoadNextSceneAfterDelay(2f)); //load scene after a delay of 2 seconds
                
            }

            // if else snake for switching between scenes
            IEnumerator LoadNextSceneAfterDelay(float delay)
            {
                yield return new WaitForSeconds(delay);
                Scene currentScene = SceneManager.GetActiveScene();
               
                if (currentScene.name == "Date1Noah") //adjust the scene name to yours
                {
                    SceneManager.LoadScene("DrinkPickGame"); 
                }
                else if(currentScene.name == "DrinkPickGame")
                {
                    SceneManager.LoadScene("Home2Noah");
                }
                else if (currentScene.name == "NoahClicking") 
                {
                    if (firstDialogue)
                    {
                        Character.SetActive(false);
                        choicebox.SetActive(false);
                        dialoguebox.SetActive(false);
                        RemoveChildren();
                        firstDialogue = false;
                    }
                    else
                    {
                        if (loveAmount <= -100)
                        {
                            SceneManager.LoadScene("TheRoom");
                        }
                        else if(PlayerPrefs.GetInt("love") <= 0) 
                        {
                            SceneManager.LoadScene("NoahBadEnding");
                        }
                        else if (PlayerPrefs.GetInt("love") >= -1)
                        {
                            SceneManager.LoadScene("NoahGoodEnding");
                        }
                    }
                }
                else if (currentScene.name == "DrinkPickGame")
                {
                    SceneManager.LoadScene("NoahClicking");
                }
                else if (currentScene.name == "TheRoom")
                {
                    SceneManager.LoadScene("DeadEnding");
                }
                //add more conditions for other scenes when necesarry
            }

        }
    }
}
