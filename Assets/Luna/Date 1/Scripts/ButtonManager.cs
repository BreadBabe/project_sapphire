using UnityEngine;
using UnityEngine.UI;
using System.Collections; // Required for IEnumerator
using System.Collections.Generic; // Needed for using Lists

public class ButtonManager : MonoBehaviour
{
    [SerializeField] Button buttonToDeactivate;
    [SerializeField] Button buttonToActivate;
    [SerializeField] List<GameObject> objectsToActivate;
    [SerializeField] List<GameObject> objectsToDeactivate;
    [SerializeField] AudioSource audioSource; // Assign this in the inspector

    void Start()
    {
        // Add listener to each button
        if (buttonToDeactivate != null)
        {
            buttonToDeactivate.onClick.AddListener(HandleButtonClick);
        }
    }

    void HandleButtonClick()
    {
        Debug.Log("Button clicked, attempting to play sound.");
        if (audioSource != null && audioSource.clip != null)
        {
            audioSource.Play(); // Play the sound only if a clip is available
            StartCoroutine(DeactivateButtonAfterSound(audioSource.clip.length));
        }
        else
        {
            Debug.Log("No AudioClip found, proceeding without sound.");
            StartCoroutine(DeactivateButtonAfterSound(0)); // Proceed immediately if no sound
        }
    }

    IEnumerator DeactivateButtonAfterSound(float delayTime)
    {
        if (delayTime > 0)
        {
            Debug.Log("Coroutine started, waiting for sound to finish.");
            yield return new WaitForSeconds(delayTime); // Wait for the sound to finish if there is a delay
        }

        Debug.Log("Updating button and objects.");
        // Deactivate all specified buttons
        if (buttonToDeactivate != null)
        {
            buttonToDeactivate.interactable = false;
        }
        if (buttonToActivate != null)
        {
            buttonToActivate.interactable = true;
        }



        // Activate all specified objects
        foreach (GameObject obj in objectsToActivate)
        {
            if (obj != null)
                obj.SetActive(true);
        }

        // Deactivate all specified objects
        foreach (GameObject obj in objectsToDeactivate)
        {
            if (obj != null)
                obj.SetActive(false);
        }
    }
}
