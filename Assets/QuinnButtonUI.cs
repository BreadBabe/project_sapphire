using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class QuinnButtonUI : MonoBehaviour
{
    [SerializeField] private string newGameLevel = "Level1";

    private GameObject currentPicture;
    private GameObject currentLeftText;
    private GameObject currentRightText;
    private GameObject currentYesButton;
    private GameObject currentImage;

    [SerializeField] private GameObject backText;
    [SerializeField] private GameObject backWrongText;
    [SerializeField] private List<GameObject> pictureList = new List<GameObject>();
    [SerializeField] private List<GameObject> textLeftList = new List<GameObject>();
    [SerializeField] private List<GameObject> textRightList = new List<GameObject>();
    [SerializeField] private List<GameObject> buttonYesList = new List<GameObject>();
    [SerializeField] private List<GameObject> imageList = new List<GameObject>();

    public bool isClicked = false;
    int index = 0;
    public bool isPressed = false;

    public void NewGameButton()
    {
        SceneManager.LoadScene(newGameLevel);
    }

    private void ResetUI()
    {
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
        foreach (GameObject imageObj in imageList)
        {
            imageObj.SetActive(false);
        }
        foreach (GameObject pictureObj in pictureList)
        {
            pictureObj.SetActive(false);
        }
        backText.SetActive(false);
        backWrongText.SetActive(false);
    }

    public void BookBackground()
    {
        ResetUI();
        if (index + 1 == pictureList.Count) return;
    }

    public void BookBackground2()
    {
        currentPicture.SetActive(true);
        currentLeftText.SetActive(true);
        currentRightText.SetActive(true);
        currentYesButton.SetActive(true);
        currentImage.SetActive(true);
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
    }

    public void NoButton()
    {
        BookBackground();
        currentPicture = pictureList[0];
        currentPicture.SetActive(true);
        backText.SetActive(true);
        // Reset current objects to be able to click again
        currentLeftText = textLeftList[0];
        currentRightText = textRightList[0];
        currentYesButton = buttonYesList[0];
        currentImage = imageList[0];
        BookBackground2();
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
        currentImage = imageList[1];
        BookBackground2();
    }

    public void YellowBookBackground()
    {
        BookBackground();
        currentPicture = pictureList[1];
        currentLeftText = textLeftList[2];
        currentRightText = textRightList[2];
        currentYesButton = buttonYesList[0];
        currentImage = imageList[2];
        BookBackground2();
    }

    public void RedBookBackground()
    {
        BookBackground();
        currentPicture = pictureList[1];
        currentLeftText = textLeftList[3];
        currentRightText = textRightList[3];
        currentYesButton = buttonYesList[0];
        currentImage = imageList[3];
        BookBackground2();
    }

    public void BlueBookBackground()
    {
        BookBackground();
        currentPicture = pictureList[1];
        currentLeftText = textLeftList[4];
        currentRightText = textRightList[4];
        currentYesButton = buttonYesList[1];
        currentImage = imageList[4];
        BookBackground2();
    }

    void Start()
    {
        if (pictureList.Count <= 0) return;
        if (textLeftList.Count <= 0) return;
        if (textRightList.Count <= 0) return;
        currentPicture = pictureList[0];
        currentLeftText = textLeftList[0];
        currentRightText = textRightList[0];
        currentImage = pictureList[0];
        backWrongText.SetActive(false);
    }
}



