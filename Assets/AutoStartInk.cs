using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoStartInk : MonoBehaviour
{
    [SerializeField] private NoahDialogueManager dialogue;

    // Start is called before the first frame update
    void Start()
    {
        dialogue.StartStoryAfterButtonClick();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
