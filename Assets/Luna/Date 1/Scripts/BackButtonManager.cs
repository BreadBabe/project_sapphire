using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class BackButtonManager : MonoBehaviour
{
    [SerializeField] List<Button> buttonsToCheck;
    [SerializeField] GameObject objectToActivate;
    [SerializeField] Button buttonToDeactivate;
    [SerializeField] Button buttonToActivate;
    [SerializeField] List<GameObject> objectsToActivate;
    [SerializeField] List<GameObject> objectsToDeactivate;
    [SerializeField] AudioSource audioSource;

    void Start()
    {
        // Add listener to the back button
        if (buttonToDeactivate != null)
        {
            buttonToDeactivate.onClick.AddListener(OnBackButtonClicked);
        }
    }

    void OnBackButtonClicked()
    {
        // Check if all buttons in the list are not interactable
        bool allButtonsInactive = true;
        foreach (Button button in buttonsToCheck)
        {
            if (button.interactable)
            {
                allButtonsInactive = false;
                break;
            }
        }

        // Activate the specified object if all buttons are not interactable
        if (allButtonsInactive && objectToActivate != null)
        {
            objectToActivate.SetActive(true);
        }

        // Handle button deactivation and activation
        StartCoroutine(HandleButtonStateAfterSound());
    }

    IEnumerator HandleButtonStateAfterSound()
    {
        // Play sound if available
        if (audioSource != null && audioSource.clip != null)
        {
            audioSource.Play(); // Play the sound only if a clip is available
            yield return new WaitForSeconds(audioSource.clip.length); // Wait for the sound to finish
        }

        // Deactivate buttonToDeactivate and activate buttonToActivate
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
