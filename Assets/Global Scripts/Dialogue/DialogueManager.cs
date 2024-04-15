using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class DialogueManager : MonoBehaviour
{
    public TextMeshProUGUI dialogueText;
    public TextMeshProUGUI dialogueSpeaker;

    // Start is called before the first frame update
    void Start()
    {
        dialogueText = GetComponent<TextMeshProUGUI>();

    }

    // Update is called once per frame
    void Update()
    {
        dialogueText.text = "Fuck. I forgot that I promised my dying grandma to meet my non-existent partner. Need to open -dating app- to find someone quickly.";

    }
}
