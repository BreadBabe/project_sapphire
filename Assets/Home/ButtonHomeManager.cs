using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.Windows.Speech;

public class ButtonHomeManager : MonoBehaviour
{
    [SerializeField] GameObject newspaperButton;
    [SerializeField] GameObject bedroomButton;
    [SerializeField] GameObject kitchenButton;
    [SerializeField] GameObject dogToyButton;
    [SerializeField] GameObject CoffeCupButton;
    [SerializeField] GameObject PictureButton;
    [SerializeField] GameObject posterButton;

    [SerializeField] GameObject goToSleepButton;

    [SerializeField] GameObject closeUpImageObject;

    [SerializeField] Sprite newspaper,bedroom,kitchen,dogToy,coffeCup,Picture,poster;

    [SerializeField] GameObject nextDayScene;


    [SerializeField] GameObject BackButton;
    [SerializeField] GameObject background;
    Image closeUpImage;


    public enum CloseUpImage{ newsPaper,Bedroom, Kitchen, dogToy, Coffe, Picture, poster }
    public CloseUpImage image;

    [SerializeField] PhoneUIManager phoneUIManager = new PhoneUIManager();

    // Start is called before the first frame update
    void Start()
    {
        closeUpImage = closeUpImageObject.GetComponent<Image>();

        newspaperButton.SetActive(false);
        bedroomButton.SetActive(false);
        kitchenButton.SetActive(false);           
        dogToyButton.SetActive(false);
        CoffeCupButton.SetActive(false);
        PictureButton.SetActive(false);
        posterButton.SetActive(false);
        closeUpImageObject.SetActive(false);
        goToSleepButton.SetActive(false);



        BackButton.SetActive(false);
        background.SetActive(false);
    }

    public void newsPaperClick()
    {
        image = CloseUpImage.newsPaper;
        Information();
    }

    public void kitchenClick()
    {
        image = CloseUpImage.Kitchen;
        Information();
    }

    public void dogToyClick()
    {
        image = CloseUpImage.dogToy;
        Information();
    }

    public void coffeCupClick()
    {
        image = CloseUpImage.Coffe;
        Information();
    }

    public void pictureClick()
    {
        image = CloseUpImage.Picture;
        Information();
    }

    public void posterClick()
    {
        image = CloseUpImage.poster;
        Information();
    }

    public void bedroomClick()
    {
        image = CloseUpImage.Bedroom;
        goToSleepButton.SetActive(true);
        Information();
    }

    public void BackButtonPressed()
    {
        background.SetActive(false);
        BackButton.SetActive(false);
        closeUpImageObject.SetActive(false);
        goToSleepButton.SetActive(false);
        nextDayScene.SetActive(false);
    }

    public void GoToSleepSelected()
    {
        closeUpImageObject.SetActive(false);
        dogToyButton.SetActive(false);
        newspaperButton.SetActive(false);
        goToSleepButton.SetActive(false);
        
        nextDayScene.SetActive(true);

        ScreenFader screenFader = FindObjectOfType<ScreenFader>();
        if (screenFader != null)
        {

     
            screenFader.StartFadeOut();

            StartCoroutine(LoadNextSceneAfterDelay(2f)); // Load scene index 1 after a delay of 2 seconds
        }
    }

    IEnumerator LoadNextSceneAfterDelay(float  delay) 
    {
        yield return new WaitForSeconds(delay);
        string nextSceneName = "";

        switch (phoneUIManager.datingAppState)
        {
            case PhoneUIManager.DatingAppStates.Quinn:
                nextSceneName = "Date1Quinn";
                break;
            case PhoneUIManager.DatingAppStates.Luna:
                nextSceneName = "Date1";
                break;
            case PhoneUIManager.DatingAppStates.Noah:
                nextSceneName = "Date1Noah";
                break;
        }
        if (!string.IsNullOrEmpty(nextSceneName))
        {
            SceneManager.LoadScene(nextSceneName);
        }
        else
        {
            Debug.LogError("Kill yourself");
        }
    }

    public void Information()
    {
        background.SetActive(true);
        BackButton.SetActive(true);
        closeUpImageObject.SetActive(true);

        switch (image)
        {
            case CloseUpImage.newsPaper:
                closeUpImage.sprite = newspaper;
                return;
            case CloseUpImage.Picture:
                closeUpImage.sprite = Picture;
                return;
            case CloseUpImage.Kitchen:
                closeUpImage.sprite = kitchen;
                return;
            case CloseUpImage.Coffe:
                closeUpImage.sprite = coffeCup;
                return;
            case CloseUpImage.dogToy:
                closeUpImage.sprite = dogToy;
                return;
            case CloseUpImage.Bedroom:
               closeUpImage.sprite = bedroom;
                return;
            case CloseUpImage.poster:
                closeUpImage.sprite = poster;
                return;
        }
    }


    // Update is called once per frame
    void Update()
        {
        if (phoneUIManager.datePicked && !phoneUIManager.PhoneUp)
        {
            newspaperButton.SetActive(true);
            bedroomButton.SetActive(true);
            kitchenButton.SetActive(true);
            dogToyButton.SetActive(true);
            CoffeCupButton.SetActive(true);
            PictureButton.SetActive(true);
            posterButton.SetActive(true);
        }

        }
}
