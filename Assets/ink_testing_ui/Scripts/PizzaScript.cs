using System;
using System.Collections;
using System.Runtime.CompilerServices;
using System.Text;
using Ink.Runtime;
using Unity.VisualScripting;
using UnityEditor.Experimental.GraphView;
using UnityEditor.Rendering;
using UnityEngine;
using UnityEngine.UI;

// This is a super bare bones example of how to play and display a ink story in Unity.
public class PizzaScript : MonoBehaviour {

    public static event Action<Story> OnCreateStory;

    [SerializeField] private TextAsset inkJSONAsset = null;
    public Story story;

    [SerializeField] private GameObject textBox = null;
    [SerializeField] private GameObject choiceBox = null;

    // UI Prefabs
    [SerializeField] private Text textPrefab = null;
    [SerializeField] private Button buttonPrefab = null;

	private bool duringWriting;
	private bool populatedScene;

    [SerializeField] private GameObject lovemeterShutter = null;

	private float loveAmount;

    [SerializeField] private GameObject inkCanvas = null;

    // dynamic sprites fetched during runtime, based on ink vars
    private GameObject envPrefab;
    private GameObject charPrefab;

	private string charName;
	private string charEmotion;

	private string envName;


    void Awake () {
		// init
		populatedScene = false;


		// Remove the default messages if any
		RemoveChildren(textBox);
		RemoveChildren(choiceBox);

		StartStory();
	}

    private void Start()
    {
        
    }

    // Creates a new Story object with the compiled story which we can then play!
    void StartStory () {
		story = new Story (inkJSONAsset.text);
        if(OnCreateStory != null) OnCreateStory(story);

		// fetch dynamic content
		charName = (string)story.variablesState["charName"];
		charEmotion = (string)story.variablesState["charEmotion"];

        string envName = (string)story.variablesState["envName"];

		/*
		will replace background, char if story file has 
		been switched before this method is called a second time
		*/

		if (populatedScene)
		{
            Destroy(envPrefab);
            Destroy(charPrefab);
        }

        envPrefab = Instantiate((GameObject)Resources.Load($"{envName}Environment"));
        charPrefab = Instantiate((GameObject)Resources.Load($"{charName}{charEmotion}"));

        envPrefab.transform.SetParent(inkCanvas.transform, false);
        charPrefab.transform.SetParent(inkCanvas.transform, false);

        // sibling order matters here
        charPrefab.transform.SetAsFirstSibling();
        envPrefab.transform.SetAsFirstSibling();

		populatedScene = true;

        // call proceeding method
        RefreshView();
	}

	// This is the main function called every time the story changes. It does a few things:
	// Destroys all the old content and choices.
	// Continues over all the lines of text, then displays all the choices. If there are no choices, the story is finished!
	void RefreshView () {
        // Remove all the UI on screen
        RemoveChildren(textBox);
        RemoveChildren(choiceBox);

        // Read all the content until we can't continue any more
        while (story.canContinue) {
			// Continue gets the next line of the story
			string text = story.Continue ();
			// This removes any white space from the text.
			text = text.Trim();
            // Display the text on screen!
            CreateContentView(text);
		}

		// Display all the choices, if there are any!
		if(story.currentChoices.Count > 0) {
			for (int i = 0; i < story.currentChoices.Count; i++) {
				Choice choice = story.currentChoices [i];
				Button button = CreateChoiceView (choice.text.Trim ());
				// Tell the button what to do when we press it
				button.onClick.AddListener (delegate {
					OnClickChoiceButton (choice);
				});
			}
		}
		// If we've read all the content and there's no choices, the story is finished!
		else {
			Button choice = CreateChoiceView("End of story.\nRestart?");
			choice.onClick.AddListener(delegate{
				StartStory();
			});
		}

		// love meter updates on each refresh by fetching global variable in the ink script
		loveAmount = (int)story.variablesState["loveAmount"];
        lovemeterShutter.transform.localScale = new Vector3(1 - (loveAmount / 10), 1, 1);

		// replace character after each response
        charEmotion = (string)story.variablesState["charEmotion"];

		int previousIndex = charPrefab.transform.GetSiblingIndex();
		Destroy(charPrefab);

		charPrefab = Instantiate((GameObject)Resources.Load($"{charName}{charEmotion}"));
		charPrefab.transform.SetParent(inkCanvas.transform, false);
        charPrefab.transform.SetSiblingIndex(previousIndex);


        Debug.Log("pizza");
    }

    // When we click the choice button, tell the story to choose that choice!
    void OnClickChoiceButton(Choice choice) {

		// only when dialogue text currently isnt being written out
		if (!duringWriting)
		{
            story.ChooseChoiceIndex(choice.index);
            RefreshView();
        }
	}

	// Creates a textbox showing the the line of text, display text one character at a time
	void CreateContentView (string text) {

		Text storyText = Instantiate (textPrefab) as Text;
        storyText.transform.SetParent(textBox.transform, false);

		// begin incremental letter write
		StartCoroutine(Sleeper(storyText, text));
    }

	IEnumerator Sleeper(Text storyText, string text)
	{
		// lock choice picking with bool
		duringWriting = true;
        StringBuilder incremText = new StringBuilder();

		for (int i = 0; i < text.Length; i++)
		{
            incremText.Append(text[i]);

            storyText.text = incremText.ToString();

			// sleep on coroutine thread between letter write
			yield return new WaitForSeconds(.05f);
		}

		duringWriting = false;
		yield return null;
    }

	// Creates a button showing the choice text
	Button CreateChoiceView (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (buttonPrefab) as Button;
		choice.transform.SetParent (choiceBox.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;

		choiceText.fontSize = 32;
		choiceText.fontStyle = FontStyle.Bold;

		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	// Destroys all the children of this gameobject (all the UI)
	void RemoveChildren (GameObject removeChildFrom) {
		int childCount = removeChildFrom.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			Destroy (removeChildFrom.transform.GetChild (i).gameObject);
		}
	}
}
