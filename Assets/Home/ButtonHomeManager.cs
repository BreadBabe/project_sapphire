using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using Unity.VisualScripting;
using UnityEngine;

public class ButtonHomeManager : MonoBehaviour
{
    [SerializeField] GameObject newspaperButton;
    [SerializeField] GameObject bedroomButton;
    [SerializeField] GameObject kitchenButton;
    [SerializeField] GameObject dogToyButton;
    [SerializeField] GameObject CoffeCupButton;
    [SerializeField] GameObject PictureButton;
    [SerializeField] GameObject BookButton;
    [SerializeField] GameObject BackButton;

    [SerializeField] GameObject background;
    [SerializeField] GameObject bedroom;


    [SerializeField] PhoneUIManager phoneUIManager = new PhoneUIManager();

    // Start is called before the first frame update
    void Start()
    {
        newspaperButton.SetActive(false);
        bedroomButton.SetActive(false);
        kitchenButton.SetActive(false);           
        dogToyButton.SetActive(false);
        CoffeCupButton.SetActive(false);
        PictureButton.SetActive(false);
        BookButton.SetActive(false);
        BackButton.SetActive(false);

        background.SetActive(false);
    }

    public void newsPaperClick()
    {

    }

    public void kitchenClick()
    {

    }

    public void dogToyClick()
    {

    }

    public void coffeCupClick()
    {

    }

    public void pictureClick()
    {

    }

    public void bookClick()
    {

    }

    public void bedroomClick()
    {

    }

    public void BackButtonPressed()
    {

    }

    public void C() { }


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
            BookButton.SetActive(true);
        }
        }
}
