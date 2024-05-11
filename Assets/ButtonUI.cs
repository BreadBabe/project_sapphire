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

    public void ChangeBackground()
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

        //currentLeftText.SetActive(false);
        //currentRightText.SetActive(false);

        if (index + 1 == pictureList.Count) return;

        currentPicture = pictureList[index];
        currentLeftText = textLeftList[index];
        currentRightText = textRightList[index];

        currentPicture.SetActive(true);
        currentLeftText.SetActive(true);
        currentRightText.SetActive(true);

        //index++;
    }

    public void GreenBookBackground()
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

        currentPicture = pictureList[1];
        currentLeftText = textLeftList[1];
        currentRightText = textRightList[1];

        currentPicture.SetActive(true);
        currentLeftText.SetActive(true);
        currentRightText.SetActive(true);
    }

    public void YellowBookBackground()
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
        if (index + 1 == textLeftList.Count) return;
        if (index + 1 == textRightList.Count) return;

        currentPicture = pictureList[1];
        currentLeftText = textLeftList[2];
        currentRightText = textRightList[2];

        currentPicture.SetActive(true);
        currentLeftText.SetActive(true);
        currentRightText.SetActive(true);
    }

    public void RedBookBackground()
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
        if (index + 1 == textLeftList.Count) return;
        if (index + 1 == textRightList.Count) return;

        currentPicture = pictureList[1];
        currentLeftText = textLeftList[3];
        currentRightText = textRightList[3];

        currentPicture.SetActive(true);
        currentLeftText.SetActive(true);
        currentRightText.SetActive(true);
    }

    public void BlueBookBackground()
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
        if (index + 1 == textLeftList.Count) return;
        if (index + 1 == textRightList.Count) return;

        currentPicture = pictureList[1];
        currentLeftText = textLeftList[4];
        currentRightText = textRightList[4];

        currentPicture.SetActive(true);
        currentLeftText.SetActive(true);
        currentRightText.SetActive(true);
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
