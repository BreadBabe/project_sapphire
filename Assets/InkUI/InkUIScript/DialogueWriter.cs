using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TMPro;
using UnityEngine;
using UnityEngine.UIElements;

public class DialogueWriter : MonoBehaviour
{
    //Text as shown on screen
    [SerializeField] private TextMeshProUGUI dialogueText;
    [SerializeField] private TextMeshProUGUI dialogueSpeaker;

    //Imported dialogue text
    private string[] TextArray;
    private string importedText;

    //Stringbuilder
    private StringBuilder incrementalSB;

    //Loop math
    private int sentenceCount;
    private int currentLetter;
    private float writingDelay;
    private float timeSinceLetter;

    // Start is called before the first frame update
    void Start()
    {
        incrementalSB = new StringBuilder();
        dialogueText = GetComponent<TextMeshProUGUI>();
        importedText = "Hello World i am on TV and that is kinda cool okay not like it matter or anything like its just tv or or or or or or or or or or or or or or or or or or";
        importedText.ToCharArray();
        sentenceCount = importedText.Count();
        writingDelay = 0.1f;
        currentLetter = 0;
        dialogueText.text = "";
    }

    // Update is called once per frame
    void Update()
    {
        TextWriter(importedText);
        SpeakerLabelChanger("???");
    }

    /// <summary>
    /// TextWriter method writes out the string in "currentText" letter for letter
    /// when the method is called.
    /// </summary>
    private void TextWriter(string currentText)
    {
        if (timeSinceLetter + writingDelay < Time.realtimeSinceStartup)
        {
            if (currentLetter != sentenceCount)
            {   
                timeSinceLetter = Time.realtimeSinceStartup; 
                incrementalSB.Append(currentText[currentLetter]);
                dialogueText.text = incrementalSB.ToString();
                currentLetter++;
            }
            else
            {
                incrementalSB.Append("ERROR");
            }
        }
    }
    /// <summary>
    /// Simply changes the speaker labels text
    /// </summary>
    private void SpeakerLabelChanger(string currentSpeaker)
    {
        dialogueSpeaker.text = currentSpeaker;
    }
}
