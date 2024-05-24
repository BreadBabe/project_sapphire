using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PhoneUIManHome2 : MonoBehaviour

{
    PhoneUIManager phoneUI;
    [SerializeField] GameObject PhoneIcon;
    [SerializeField] GameObject PhoneUI;
    [SerializeField] GameObject messangerApp;
    [SerializeField] GameObject messangerAppUI;
    [SerializeField] GameObject homeButton;
    [SerializeField] GameObject notif;

    [SerializeField] GameObject dialoguebox;
    [SerializeField] GameObject choicebox;
    [SerializeField] GameObject character;
    [SerializeField] HospitalDialogueManager hospitalManager;

    [SerializeField] GameObject DateMessages;
    [SerializeField] GameObject unknownSenderMessage;
    [SerializeField] GameObject backButton;

    [SerializeField] GameObject messageUI;
    [SerializeField] GameObject UnknownMessageUI;

    [SerializeField] GameObject likedMessage;

    [SerializeField] GameObject   LoveMterShutter;


    public bool leisureTime = false;

    public bool PhoneUp = false;

    private float scalingSpeed = 4.0f;

    public bool datePicked;
    bool dateDay;

    bool datingappUp;
    bool messangerAppUp;


    public enum DatingAppStates { Quinn, Luna, Noah, Summer }
    public DatingAppStates datingAppState;

    //[SerializeField] Sprite quinnSprite;
    //[SerializeField] Sprite lunaSprite;
    //[SerializeField] Sprite noahSprite;
    //[SerializeField] Sprite summerSprite;

    //[SerializeField] Sprite quinnMessage;
    //[SerializeField] Sprite noahMessage;
    //[SerializeField] Sprite summerMessage;
    //[SerializeField] Sprite lunaMessage;


    // Start is called before the first frame update
    void Start()
    {
        PhoneIcon.SetActive(true);
        notif.SetActive(false);
        PhoneUI.SetActive(false);
        messangerApp.SetActive(false);
        messangerAppUI.SetActive(false);
        DateMessages.SetActive(false);
        likedMessage.SetActive(false);
        unknownSenderMessage.SetActive(false);

        messageUI.SetActive(false);
        UnknownMessageUI.SetActive(false);
        LoveMterShutter.SetActive(true);

        backButton.SetActive(false);

    }

    IEnumerator TransitionToDate2(float delay)
    {
        yield return new WaitForSeconds(delay);
        Scene currentScene = SceneManager.GetActiveScene();
        if (currentScene.name == "Home1" && dateDay)
        {
            //    switch (datingAppState)
            //    {
            //        case PhoneUI.PhoneUIManager.DatingAppStates.Quinn:
            //            SceneManager.LoadScene(1);
            //            break;
            //        case PhoneUIManager.DatingAppStates.Luna:
            //            SceneManager.LoadScene(2);
            //            break;
            //        case PhoneUIManager.DatingAppStates.Noah:
            //            SceneManager.LoadScene(4);
            //            break;
            //        case PhoneUIManager.DatingAppStates.Summer:
            //            SceneManager.LoadScene(1);
            //            break;
            //    }
        }
    }
    public void DateMessageRecieved()
    {
        messageUI.SetActive(true);
        backButton.SetActive(true);
    }

    public void UnknownMessageRecieved()
    {
        UnknownMessageUI.SetActive(true);
        backButton.SetActive(true);

    }

    public void Youlikedmessage()
    {
        likedMessage.SetActive(true);
    }

    public void BackButtonPressed()
    {
        messageUI.SetActive(false);
        UnknownMessageUI.SetActive(false);
        backButton.SetActive(false);
    }

    public void PhoneIconOnClick()
    {
        if (PhoneUp)
        {
            PhoneUI.SetActive(false);
            messangerApp.SetActive(false);
            homeButton.SetActive(false);
            notif.SetActive(false);
            PhoneUp = false;
        }
        else if (!PhoneUp)
        {
            PhoneUI.SetActive(true);
            messangerApp.SetActive(true);
            homeButton.SetActive(true);
            notif.SetActive(true);
            PhoneUp = true;

            float loveAmount = (float)PlayerPrefs.GetInt("love");

            LoveMterShutter.transform.localScale = new Vector3((loveAmount + 10) / 20, 1, 1);

            Debug.Log((loveAmount + 10) / 20);
        }

    }

    public void homeBUttonOnClick()
    {
        if (messangerAppUp)
        {
            StartCoroutine(ScaleDownObjectApp());
            messangerAppUp = false;
        }
    }

    public void MessangerAppCLicked()
    {
        messangerAppUI.SetActive(true);
        StartCoroutine(ScaleUpObjectApp());
        messangerAppUp = true;
        notif.SetActive(false);    
        DateMessages.SetActive(true);
        unknownSenderMessage.SetActive(true);

    }


    IEnumerator ScaleUpObjectApp()
    {
        Vector3 initialScale = messangerAppUI.transform.localScale;
        Vector3 targetScale = initialScale * 10f; // Example: double the size
        Vector3 initialPosition = messangerAppUI.transform.position;
        Vector3 targetPosition = new Vector3(960, 625, 0);

        float elapsedTime = 0f;
        while (elapsedTime < 1f)
        {
            messangerAppUI.transform.localScale = Vector3.Lerp(initialScale, targetScale, elapsedTime);
            messangerAppUI.transform.position = Vector3.Lerp(initialPosition, targetPosition, elapsedTime);
            elapsedTime += Time.deltaTime * scalingSpeed;
            yield return null;
        }

        messangerAppUI.transform.localScale = targetScale;
        messangerAppUI.transform.position = targetPosition;
    }


    IEnumerator ScaleDownObjectApp()
    {
        Vector3 initialScale = messangerAppUI.transform.localScale;
        Vector3 targetScale = initialScale / 10f; // Example: double the size
        Vector3 initialPosition = messangerAppUI.transform.position;
        Vector3 targetPosition = new Vector3(960, 625, 0);

        float elapsedTime = 0f;
        while (elapsedTime < 1f)
        {
            messangerAppUI.transform.localScale = Vector3.Lerp(initialScale, targetScale, elapsedTime);
            messangerAppUI.transform.position = Vector3.Lerp(initialPosition, targetPosition, elapsedTime);
            elapsedTime += Time.deltaTime * scalingSpeed;
            yield return null;
        }

        messangerAppUI.transform.localScale = targetScale;
        messangerAppUI.transform.position = targetPosition;
        messangerAppUI.SetActive(false);
        messangerAppUI.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (hospitalManager.story != null)
        {
            if (hospitalManager.story.currentChoices.Count <= 0)
            {
                PhoneIcon.SetActive(true);
                dialoguebox.SetActive(false);
                choicebox.SetActive(false);
                character.SetActive(false);
            }
        }
    }

    public void DateSelected()
    {
        datePicked = true;
        dateDay = true;
        //ScreenFader screenFader = FindObjectOfType<ScreenFader>();
        //if (screenFader != null)
        //{
        //screenFader.StartFadeOut();

        StartCoroutine(TransitionToDate2(2f));

    }




}