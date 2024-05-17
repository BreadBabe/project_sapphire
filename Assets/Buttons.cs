using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Buttons : MonoBehaviour
{
    // Start is called before the first frame update
    public GameObject background;
    private GameObject currentPicture;
    [SerializeField] private List<GameObject> pictureList = new List<GameObject>();
    [SerializeField] private GameObject ButtonActivate;
    public GameObject minigameButton;
    int index = 1;
    void Start()
    {
        if (pictureList.Count <= 0) return;
        currentPicture = pictureList[0];
    }
    public void MiniGame() 
    {
        if (minigameButton.activeInHierarchy == true) 
        {
            minigameButton.SetActive(false);

        }
        else 
        {
            minigameButton.SetActive(true);
        }
    }
    public void MiniGameScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
       
    }
    public void BackButton ()
    {
        currentPicture.SetActive(false);
        if (index + 1 == pictureList.Count) return;
        currentPicture = pictureList[--index];
        currentPicture.SetActive(true);
    }
    public void ChangeBackground()
    {
        currentPicture.SetActive(false);
        if (index + 1 == pictureList.Count) return;
        currentPicture = pictureList[++index];
        currentPicture.SetActive(true);
    }

    // Update is called once per frame
    //void Update()
    //{

    //}
}
