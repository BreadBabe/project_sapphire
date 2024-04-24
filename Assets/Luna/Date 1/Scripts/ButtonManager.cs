using UnityEngine;
using UnityEngine.UI;  // Import the UI namespace to work with UI components

public class ButtonManager : MonoBehaviour
{
    [SerializeField] Button buttonToDeactivate;  // Assign in the inspector
    [SerializeField] GameObject objectToActivate;  // Assign in the inspector
    [SerializeField] GameObject objectToDeactivate;

    void Start()
    {
        // Optional: Add a listener to the button click
        buttonToDeactivate.onClick.AddListener(HandleButtonClick);
    }

    void HandleButtonClick()
    {
        // Disable the button
        buttonToDeactivate.interactable = false;

        // Activate the other object or feature
        objectToActivate.SetActive(true);

        objectToDeactivate.SetActive(false);

        // Optionally, remove the listener if it's no longer needed
        buttonToDeactivate.onClick.RemoveListener(HandleButtonClick);
    }
}
