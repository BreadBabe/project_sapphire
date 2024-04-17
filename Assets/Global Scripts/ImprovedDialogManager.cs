using System;
using Ink.Runtime;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class LunaInkManager : MonoBehaviour
{
    public static event Action<Story> OnCreateStory;
    [SerializeField] private AudioSource typingAudioSource;

    [SerializeField] private float typingSpeed;

    [SerializeField] private TextAsset inkJSONAsset = null;
    private Story story;

    [SerializeField] private GameObject dialoguebox = null;
    [SerializeField] private GameObject choicebox = null;

    [SerializeField] private Text textPrefab = null;

    [SerializeField] private Button buttonPrefab = null;

    [SerializeField] private GameObject Character;
    [SerializeField] private GameObject Audio;

    private string charName;
    private string charEmotion;
    private string charSound;


    [SerializeField] private GameObject lovemeterShutter = null;

    private float loveAmount;

    private Text storyText;
    private string currentText;
    private bool isTyping;

    void Awake()
    {
        RemoveChildren();
        StartStory();
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
 

        Debug.Log("pizza");
        
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


        charEmotion = (string)story.variablesState["charEmotion"];

        Sprite spr = Resources.Load($"{charName}{charEmotion}", typeof(Sprite)) as Sprite;
        Character.GetComponent<Image>().sprite = spr;

        charSound = (string)story.variablesState["charSound"];
        AudioClip soundEffect = Resources.Load($"{charName}{charSound}", typeof(AudioClip)) as AudioClip;
        Audio.GetComponent<AudioSource>().clip = soundEffect;
        Audio.GetComponent<AudioSource>().Play();

        loveAmount = (int)story.variablesState["loveAmount"];
        lovemeterShutter.transform.localScale = new Vector3(1 - (loveAmount / 10), 1, 1);

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
                for (int i = 0; i < story.currentChoices.Count; i++)
                {
                    Choice choice = story.currentChoices[i];
                    Button button = CreateChoiceView(choice.text.Trim());
                    button.onClick.AddListener(() => OnClickChoiceButton(choice));
                }
            }
            else
            {
                Button choice = CreateChoiceView("End of story.\nRestart?");
                choice.onClick.AddListener(delegate {
                    StartStory();
                });
            }

        }
    }

}


