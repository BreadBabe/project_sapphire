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
    public bool isPressed = false;

    public void NewGameButton() 
    {
        SceneManager.LoadScene(newGameLevel);
    }
    public void ChangeBackground() 
    {
        currentPicture.SetActive(false);
        if (index + 1 == pictureList.Count) return;
        //currentPicture = pictureList[++index];
        currentPicture = pictureList[0];
        currentPicture.SetActive(true);
    }
    public void GreenBookBackground()
    {
        currentPicture.SetActive(false);
        if (index + 1 == pictureList.Count) return;
        currentPicture = pictureList[1];
        currentPicture.SetActive(true);
    }
    //public void YellowBookBackground()
    //{
    //    currentPicture.SetActive(false);
    //    if (index + 1 == pictureList.Count) return;
    //    currentPicture = pictureList[1];
    //    currentPicture.SetActive(true);
    //}
    void Start()
    {
        if (pictureList.Count <= 0) return;
        currentPicture = pictureList[0];
    }

    
}
