using System.Collections;
using TMPro;
using UnityEngine;

public class YlvasMonologueScript : MonoBehaviour
{
    public TextMeshProUGUI dialogueText;
    public TextMeshProUGUI dialogueSpeaker;

    private string completeText;
    private string currentText = "";
    public float typingSpeed = 50.0f;
    private int index = 0;

    void Start()
    {
        // Ensure that dialogueText is initially empty
        dialogueText.text = "";

        completeText = "Fuck. I forgot that I promised my dying grandma to meet my non-existent partner. Need to open -dating app- to find someone quickly.";
        StartCoroutine(TypeDialogue());
    }

    IEnumerator TypeDialogue()
    {
        Debug.Log("Typing dialogue started");
        while (index < completeText.Length)
        {
            currentText += completeText[index++];
            dialogueText.text = currentText;
            yield return new WaitForSeconds(1f / typingSpeed);
        }
    }


}
