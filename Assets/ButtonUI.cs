using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ButtonUI : MonoBehaviour
{
    [SerializeField] private string newGameLevel = "Level1";
    //public GameObject BookStore;

    private GameObject currentPicture;
    private GameObject currentLeftText;
    private GameObject currentRightText;
    private GameObject currentYesButton;
    //private GameObject backText;

    [SerializeField] private GameObject backText;
    [SerializeField] private GameObject backWrongText;
    //[SerializeField] private List<GameObject> backTextList = new List<GameObject>();
    [SerializeField] private List<GameObject> pictureList = new List<GameObject>();
    [SerializeField] private List<GameObject> textLeftList = new List<GameObject>();
    [SerializeField] private List<GameObject> textRightList = new List<GameObject>();
    [SerializeField] private List<GameObject> buttonYesList = new List<GameObject>();
    //Kan man inte sötta en serializefield för dialog tbx och en bool till det?
    

    public bool isClicked = false;
    int index = 0;
    public bool isPressed = false;


    public void NewGameButton()
    {
        SceneManager.LoadScene(newGameLevel);
    }

    
    public void BookBackground()
    {
        currentPicture.SetActive(false);
        backText.SetActive(false);
        backWrongText.SetActive(false);
        foreach (GameObject textObj in textLeftList)
        {
            textObj.SetActive(false);
        }
        foreach (GameObject textRightObj in textRightList)
        {
            textRightObj.SetActive(false);
        }
        foreach (GameObject buttonYesObj in buttonYesList)
        {
            buttonYesObj.SetActive(false);
        }
        if (index + 1 == pictureList.Count) return;

        
    }
    public void BookBackground2()
    {
        currentPicture.SetActive(true);
        currentLeftText.SetActive(true);
        currentRightText.SetActive(true);
        currentYesButton.SetActive(true);
    }
    public void YesButton()
    {
        BookBackground();
        currentPicture = pictureList[0];
        currentPicture.SetActive(true);
        backWrongText.SetActive(true);
        backText.SetActive(true);
    }
    public void Yes2Button()
    {
        //Byta scen
    }
    public void NoButton()
    {
        BookBackground();
        currentPicture = pictureList[0];
        currentPicture.SetActive(true);
        backText.SetActive(true);
    }
    public void ChangeBackground()
    {
        BookBackground();
        currentPicture = pictureList[0];
        currentLeftText = textLeftList[index];
        currentRightText = textRightList[index];

        BookBackground2();
    }

    public void GreenBookBackground()
    {
        BookBackground();
        currentPicture = pictureList[1];
        currentLeftText = textLeftList[1];
        currentRightText = textRightList[1];
        currentYesButton = buttonYesList[0];
        BookBackground2();
        
    }

    public void YellowBookBackground()
    {
        BookBackground();
        currentPicture = pictureList[1];
        currentLeftText = textLeftList[2];
        currentRightText = textRightList[2];
        currentYesButton = buttonYesList[0];
        BookBackground2();

    }

    public void RedBookBackground()
    {
        BookBackground();
        currentPicture = pictureList[1];
        currentLeftText = textLeftList[3];
        currentRightText = textRightList[3];
        currentYesButton = buttonYesList[0];
        BookBackground2();

    }

    public void BlueBookBackground()
    {
        //BookBackground();
        currentPicture.SetActive(false);
        backText.SetActive(false);
        backWrongText.SetActive(false);
        foreach (GameObject textObj in textLeftList)
        {
            textObj.SetActive(false);
        }
        foreach (GameObject textRightObj in textRightList)
        {
            textRightObj.SetActive(false);
        }
        foreach (GameObject buttonYesObj in buttonYesList)
        {
            buttonYesObj.SetActive(false);
        }
        if (index + 1 == pictureList.Count) return;

        currentPicture = pictureList[1];
        currentLeftText = textLeftList[4];
        currentRightText = textRightList[4];
        currentYesButton = buttonYesList[1];
        BookBackground2();
    }
    
    void Start()
    {
        if (pictureList.Count <= 0) return;
        if(textLeftList.Count <= 0) return;
        if(textRightList.Count <= 0) return;
        currentPicture = pictureList[0];
        currentLeftText = textLeftList[0];
        currentRightText = textRightList[0];
        backWrongText.SetActive(false);
    }
}
