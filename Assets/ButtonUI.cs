using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ButtonUI : MonoBehaviour
{
    [SerializeField] private string newGameLevel = "Level1";
    public GameObject BookStore;
    private GameObject currentPicture;
    [SerializeField] private List<GameObject> pictureList = new List<GameObject>();
    public bool isClicked = false;
    int index = 0;
    //[SerializeField] private string newGameLevelt = "Level2";
    //private bool textRenderingComplete = false;

    //// Reference to buttons
    //public Button GreenBookbutton;
    //public Button button2;
    //public Button button3;

    public void NewGameButton() 
    {
        SceneManager.LoadScene(newGameLevel);
        //SceneManager.LoadScene(newGameLevelt);
    }
    public void ChangeBackground() 
    {
        currentPicture.SetActive(false);
        if (index + 1 == pictureList.Count) return;
        currentPicture = pictureList[++index];
        currentPicture.SetActive(true);
    }
    //public void NewgameButtont()
    //{
    //    SceneManager.LoadScene(newGameLevelt);
    //}
    void Start()
    {
        if (pictureList.Count <= 0) return;
        currentPicture = pictureList[0];
    }

    //// Function to handle completion of text rendering
    //private void onTextRenderingComplete()
    //{
    //    // Set textRenderingComplete to true
    //    textRenderingComplete = true;
    //    // Enable buttons
    //    enableButtons();
    //}

    //// Function to enable buttons once text rendering is complete
    //private void enableButtons()
    //{
    //    // Enable the buttons for user interaction
    //    button1.interactable = true;
    //    button2.interactable = true;
    //    button3.interactable = true;
    //}

    //// Function to handle button click event
    //public void onButtonClick(Button button)
    //{
    //    if (textRenderingComplete)
    //    {
    //        // Handle button click event
    //        Debug.Log("Button " + button.name + " clicked.");
    //    }
    //    else
    //    {
    //        // Do nothing or show a message indicating that text rendering is in progress
    //        Debug.Log("Text rendering is in progress. Buttons are disabled.");
    //    }
    //}

    //// Function to make buttons clickable
    //public void makeButtonsClickable()
    //{
    //    textRenderingComplete = true;
    //    enableButtons();
    //}

    //// Rendering function for buttons
    //private void renderButtons()
    //{
    //    // Render buttons with initial clickability state based on textRenderingComplete
    //    if (textRenderingComplete)
    //    {
    //        // Render buttons with enabled state
    //        enableButtons();
    //    }
    //    else
    //    {
    //        // Render buttons with disabled state
    //        button1.interactable = false;
    //        button2.interactable = false;
    //        button3.interactable = false;
    //    }
    //}
}
