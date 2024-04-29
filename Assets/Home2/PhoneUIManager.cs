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

    [SerializeField] GameObject DateQUESTIONMARK;
  
    [SerializeField] GameObject[] appButtons;

    [SerializeField] GameObject dialoguebox;
    [SerializeField] GameObject choicebox;
    [SerializeField] GameObject character;
    [SerializeField] HospitalDialogueManager hospitalManager;

    [SerializeField] SpriteRenderer datingAppSpriteRenderer;
    [SerializeField] Sprite[] datingAppSprites;



    private float scalingSpeed = 4.0f;

    public bool datePicked;

    public enum DatingAppStates { Quinn, Luna, Noah, Summer }
    public DatingAppStates datingAppState;


    // Start is called before the first frame update
    void Start()
    {
        PhoneIcon.SetActive(true);
        PhoneUI.SetActive(false);
        datingApp.SetActive(false);
        datingAppUI.SetActive(false);
        DateQUESTIONMARK.SetActive(false);
        foreach (GameObject button in appButtons)
        {
            button.SetActive(false);
        }

        UpdateDatingAppSprite();

    }

    public void PhoneIconOnClick()
    {
        PhoneUI.SetActive(true);
        datingApp.SetActive(true);
   
    }

    public void datingAppOnClick() 
    {
        datingAppUI.SetActive(true);
        foreach (GameObject button in appButtons)
        {
            button.SetActive(false);
        }
        StartCoroutine(ScaleObject());
        StartCoroutine(ShowAppButtons());
    }

    public void UpdateAppUI()
    {
        
    }

    public void RightButtonPressed()
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

        UpdateDatingAppSprite();
    }

    public void LeftButtonPressed()
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

        UpdateDatingAppSprite();
    }

    void UpdateDatingAppSprite()
    {
        // Update sprite renderer with the sprite corresponding to the current dating app state
        datingAppSpriteRenderer.sprite = datingAppSprites[(int)datingAppState];
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
        DateQUESTIONMARK.SetActive(true);
    }
    
    IEnumerator ScaleObject()
    {
        Vector3 initialScale = datingAppUI.transform.localScale;
        Vector3 targetScale = initialScale * 10f; // Example: double the size
        Vector3 initialPosition = datingAppUI.transform.position;
        Vector3 targetPosition = new Vector3(960, 590,0);

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
        ScreenFader screenFader = FindObjectOfType<ScreenFader>();
        if (screenFader != null)
        {
            screenFader.StartFadeOut();

            StartCoroutine(TransitionToDate(2f));
        }
    }

    public void DateRejected()
    {
        DateQUESTIONMARK.SetActive(false);

    }

    IEnumerator TransitionToDate(float delay)
    {
        yield return new WaitForSeconds(delay);
        Scene currentScene = SceneManager.GetActiveScene();
        if (currentScene.name == "Home2" && datePicked)
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
                    SceneManager.LoadScene(1);
                    break;
                case PhoneUIManager.DatingAppStates.Summer:
                    SceneManager.LoadScene(1);
                    break;
            }
        }
    }
}
