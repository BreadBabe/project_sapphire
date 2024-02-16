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
        importedText = "Hello World i am on TV";
        importedText.ToCharArray();
        sentenceCount = importedText.Count();
        writingDelay = 0.1f;
        currentLetter = 0;
        dialogueText.text = "";
    }

    // Update is called once per frame
    void Update()
    {
        TextWriter();

    }

    private void TextWriter()
    {
        if (timeSinceLetter + writingDelay < Time.realtimeSinceStartup)
        {
            if (currentLetter != sentenceCount)
            {   
                timeSinceLetter = Time.realtimeSinceStartup; 
                incrementalSB.Append(importedText[currentLetter]);
                dialogueText.text = incrementalSB.ToString();
                currentLetter++;
            }
            else
            {
                incrementalSB.Append("ERROR");
            }
        }
    }
}
