//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//using UnityEngine.SceneManagement;

//public class ButtonUI : MonoBehaviour
//{
//    //[SerializeField] private string newGameLevel = "Level1";
    
//    private GameObject currentLeftText;
    
//    [SerializeField] private List<GameObject> textLeftList = new List<GameObject>();

//    //public bool isClicked = false;
//    //int index = 0;
//    //public bool isPressed = false;

//    //public void NewGameButton()
//    //{
//    //    SceneManager.LoadScene(newGameLevel);
//    //}
//    public void ChangeText()
//    {
//        currentLeftText.SetActive(false);
//        //if (index + 1 == pictureList.Count) return;
//        ////currentPicture = pictureList[++index];
//        //currentPicture = pictureList[0];
//        //currentPicture.SetActive(true);
//    }
//    public void GreenBookText()
//    {
//        currentLeftText.SetActive(false);
//        if (index + 1 == textLeftList.Count) return;
//        currentLeftText = textLeftList[1];
//        currentLeftText.SetActive(true);
//    }
//    //public void YellowBookBackground()
//    //{
//    //    currentPicture.SetActive(false);
//    //    if (index + 1 == pictureList.Count) return;
//    //    currentPicture = pictureList[1];
//    //    currentPicture.SetActive(true);
//    //}
//    void Start()
//    {
//        if (textLeftList.Count <= 0) return;
//        currentLeftText = textLeftList[0];
//    }


//}
