using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TextCore.Text;
using UnityEngine.UIElements;

public class PhoneUIManager : MonoBehaviour
{
    [SerializeField] GameObject PhoneIcon;
    [SerializeField] GameObject PhoneUI;
    [SerializeField] GameObject datingApp;
    [SerializeField] GameObject datingAppUI;
    [SerializeField] GameObject messangerApp;
    [SerializeField] GameObject messangerAppUI;
    [SerializeField] GameObject homeButton;
    [SerializeField] GameObject notif;
    [SerializeField] GameObject lockedDate;

    [SerializeField] GameObject DateQUESTIONMARK;
  
    [SerializeField] GameObject[] appButtons;

    [SerializeField] GameObject dialoguebox;
    [SerializeField] GameObject choicebox;
    [SerializeField] GameObject character;
    [SerializeField] HospitalDialogueManager hospitalManager;

    [SerializeField] SpriteRenderer datingAppSpriteRenderer;
    [SerializeField] Sprite[] datingAppSprites;


    [SerializeField] GameObject DateMessages;
    [SerializeField] GameObject unknownSenderMessage;
    [SerializeField] GameObject backButton;

    [SerializeField] GameObject messageUI;
    [SerializeField] GameObject UnknownMessageUI;

    [SerializeField] GameObject likedMessage;

    [SerializeField] GameObject ShowInteractiveButtons;

    [SerializeField] GameObject LoveMterShutter;
    [SerializeField] GameObject nextDayScene;


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
        PhoneIcon.SetActive(false);
        notif.SetActive(false);
        lockedDate.SetActive(false);
        PhoneUI.SetActive(false);
        datingApp.SetActive(false);
        messangerApp.SetActive(false);
        messangerAppUI.SetActive(false);
        datingAppUI.SetActive(false);
        DateQUESTIONMARK.SetActive(false);
        DateMessages.SetActive(false); 
        likedMessage.SetActive(false);
        unknownSenderMessage.SetActive(false);
        LoveMterShutter.SetActive(true);
        nextDayScene.SetActive(false);

        messageUI.SetActive(false);
        UnknownMessageUI.SetActive(false);

        backButton.SetActive(false);

        foreach (GameObject button in appButtons)
        {
            button.SetActive(false);
        }

        float loveAmount = (float)PlayerPrefs.GetInt("love");
            //LoveMterShutter.transform.localScale.x
            loveAmount = Mathf.Clamp(loveAmount, -10, 10);
            LoveMterShutter.transform.localScale = new Vector3((loveAmount) / 20, 1, 1);

            Debug.Log((loveAmount + 10) / 20);
           
    }

    IEnumerator TransitionToDate(float delay)
    {
        yield return new WaitForSeconds(delay);
        Scene currentScene = SceneManager.GetActiveScene();
        if (currentScene.name == "Home1" && dateDay)
        {
            switch (datingAppState)
            {
                case PhoneUIManager.DatingAppStates.Quinn:
                    SceneManager.LoadScene(1);
                    break;
                case PhoneUIManager.DatingAppStates.Luna:
                    SceneManager.LoadScene(2);
                    break;
                case PhoneUIManager.DatingAppStates.Noah:
                    SceneManager.LoadScene(4);
                    break;
                case PhoneUIManager.DatingAppStates.Summer:
                    SceneManager.LoadScene(1);
                    break;
            }
        }
    }
    public void DateMessageRecieved()
    {
        messageUI.SetActive(true);
        backButton.SetActive(true );
    }

    public void UnknownMessageRecieved()
    {
     UnknownMessageUI.SetActive(true);
     backButton.SetActive(true ) ;

    }

    public void Youlikedmessage()
    {
        likedMessage.SetActive(true);
    }

    public void BackButtonPressed()
    {
        messageUI.SetActive(false );
       UnknownMessageUI.SetActive(false);
        backButton.SetActive(false );
    }

    public void PhoneIconOnClick()
    {
        if (PhoneUp)
        {
            PhoneUI.SetActive(false);
            datingApp.SetActive(false);
            messangerApp.SetActive(false);
            homeButton.SetActive(false);
            PhoneUp = false;
        }
        else if (!PhoneUp)
        {
            PhoneUI.SetActive(true);
            datingApp.SetActive(true);
            messangerApp.SetActive(true);
            homeButton.SetActive(true);
            PhoneUp = true;

      
    
        }
          
    }

    public void datingAppOnClick() 
    {
        datingAppUI.SetActive(true);
        datingappUp = true;
        foreach (GameObject button in appButtons)
        {
            button.SetActive(false);
        }
        StartCoroutine(ScaleUpObject());
        StartCoroutine(ShowAppButtons());
    }

    public void homeBUttonOnClick()
    {
        if (messangerAppUp)
        {
            StartCoroutine(ScaleDownObjectApp());
            messangerAppUp = false;
        }
        else if (datingappUp)
        {
            StartCoroutine(ScaleDownObject());
            DateQUESTIONMARK.SetActive(false);
            messangerAppUp = false;
           
        }
    }

    public void MessangerAppCLicked()
    {
        messangerAppUI.SetActive(true);
        StartCoroutine(ScaleUpObjectApp());
        messangerAppUp = true;
        notif.SetActive(false);
        
        if (datePicked)
        {
            DateMessages.SetActive(true);
            unknownSenderMessage.SetActive(true);
        }
     

    }

    public void RightButtonPressed()
    {

        if(!datePicked)
        {
            switch (datingAppState)
            {
                case DatingAppStates.Quinn:
                    datingAppState = DatingAppStates.Luna;
                    break;
                case DatingAppStates.Luna:
                    datingAppState = DatingAppStates.Noah;
                    break;
                case DatingAppStates.Noah:
                    datingAppState = DatingAppStates.Summer;
                    break;
                case DatingAppStates.Summer:
                    datingAppState = DatingAppStates.Quinn;
                    break;
            }
        }
      

    }

    public void LeftButtonPressed()
    {
        if (!datePicked)
        {
               switch (datingAppState)
        {
            case DatingAppStates.Quinn:
                datingAppState = DatingAppStates.Summer;
                break;
            case DatingAppStates.Luna:
                datingAppState = DatingAppStates.Quinn;
                break;
            case DatingAppStates.Noah:
                datingAppState = DatingAppStates.Luna;
                break;
            case DatingAppStates.Summer:
                datingAppState = DatingAppStates.Noah;
                break;
        }
        }
     
    }


    IEnumerator ShowAppButtons()
    {
        yield return new WaitForSeconds(1.5f); // Adjust this delay as needed

        foreach (GameObject button in appButtons)
        {
            button.SetActive(true);
        }
    }
    public void DateMeCLicked()
    {
        if (!datePicked && datingAppState != DatingAppStates.Summer)
        {
            DateQUESTIONMARK.SetActive(true);
        }
        if (datePicked)
        {
         
        }
    }

    public void DateMessage()
    {
        notif.SetActive(true);
        DateQUESTIONMARK.SetActive(false);
        datePicked = true;
        lockedDate.SetActive(true);
        ShowInteractiveButtons.SetActive(true);
    }
    
    IEnumerator ScaleUpObject()
    {
     
        Vector3 initialScale = datingAppUI.transform.localScale;
        Vector3 targetScale = initialScale * 10f; // Example: double the size
        Vector3 initialPosition = datingAppUI.transform.position;
        Vector3 targetPosition = new Vector3(960,625,0);

        float elapsedTime = 0f;
        while (elapsedTime < 1f)
        {
            datingAppUI.transform.localScale = Vector3.Lerp(initialScale, targetScale, elapsedTime);
            datingAppUI.transform.position = Vector3.Lerp(initialPosition, targetPosition, elapsedTime);
            elapsedTime += Time.deltaTime * scalingSpeed;
            yield return null;
        }

        datingAppUI.transform.localScale = targetScale;
        datingAppUI.transform.position = targetPosition;
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

    IEnumerator ScaleDownObject()
    {
        Vector3 initialScale = datingAppUI.transform.localScale;
        Vector3 targetScale = initialScale / 10f; // Example: double the size
        Vector3 initialPosition = datingAppUI.transform.position;
        Vector3 targetPosition = new Vector3(960, 625, 0);

        float elapsedTime = 0f;
        while (elapsedTime < 1f)
        {
            datingAppUI.transform.localScale = Vector3.Lerp(initialScale, targetScale, elapsedTime);
            datingAppUI.transform.position = Vector3.Lerp(initialPosition, targetPosition, elapsedTime);
            elapsedTime += Time.deltaTime * scalingSpeed;
            yield return null;
        }

        datingAppUI.transform.localScale = targetScale;
        datingAppUI.transform.position = targetPosition;
        datingAppUI.SetActive(false);
        messangerAppUI.SetActive(false);
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
            if (hospitalManager.story.currentChoices.Count <= 0 && !datePicked)
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
        StartCoroutine(TransitionToDate(2f));
        //}
    }

    public void DateRejected()
    {
        DateQUESTIONMARK.SetActive(false);

    }

    public void NextDate()
    {
        nextDayScene.SetActive(true);
        StartCoroutine(TransitionToDate(2f));
    }



}
