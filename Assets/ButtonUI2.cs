using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ButtonUI2 : MonoBehaviour
{
    [SerializeField] private string newGameLevelt = "Date2";
    //public GameObject BookStore;

    //private GameObject currentPicture;

    //public bool isClicked = false;
    //int index = 0;
    //public bool isPressed = false;

    public void NewGameButtont()
    {
        SceneManager.LoadScene(newGameLevelt);
    }

    //void Start()
    //{
    //    if (pictureList.Count <= 0) return;
    //    if (textLeftList.Count <= 0) return;
    //    if (textRightList.Count <= 0) return;
    //    currentPicture = pictureList[0];
    //    currentLeftText = textLeftList[0];
    //    currentRightText = textRightList[0];
    //}
}
