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

    [SerializeField] private List<GameObject> pictureList = new List<GameObject>();
    [SerializeField] private List<GameObject> textLeftList = new List<GameObject>();
    [SerializeField] private List<GameObject> textRightList = new List<GameObject>();

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
        foreach (GameObject textObj in textLeftList)
        {
            textObj.SetActive(false);
        }
        foreach (GameObject textRightObj in textRightList)
        {
            textRightObj.SetActive(false);
        }
        if (index + 1 == pictureList.Count) return;
        
    }
    public void BookBackground2()
    {
        currentPicture.SetActive(true);
        currentLeftText.SetActive(true);
        currentRightText.SetActive(true);
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
        BookBackground2();
    }

    public void YellowBookBackground()
    {
        BookBackground();
        currentPicture = pictureList[1];
        currentLeftText = textLeftList[2];
        currentRightText = textRightList[2];
        BookBackground2();
    }

    public void RedBookBackground()
    {
        BookBackground();
        currentPicture = pictureList[1];
        currentLeftText = textLeftList[3];
        currentRightText = textRightList[3];
        BookBackground2();
    }

    public void BlueBookBackground()
    {
        BookBackground();

        currentPicture = pictureList[1];
        currentLeftText = textLeftList[4];
        currentRightText = textRightList[4];
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
    }
}
