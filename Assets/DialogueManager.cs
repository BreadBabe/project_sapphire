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
        dialogueText.color = Color.red;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
