using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

internal class NoahClickingScript : MonoBehaviour
{
    // empty objects, folders
    [SerializeField] internal GameObject staticFolder;
    [SerializeField] internal GameObject buttonFolder;
    [SerializeField] internal GameObject boxFolder;
    [SerializeField] internal GameObject wallFolder;
    [SerializeField] internal GameObject Startbutton;
    [SerializeField] internal GameObject BoxButton;
    [SerializeField] internal GameObject OpenButton;
    [SerializeField] internal GameObject CloseButton;
    [SerializeField] internal NoahDialogueManager dialogue;
    [SerializeField] internal TextAsset InkFile;
    [SerializeField] internal TextAsset InkFile2;

    private bool boxStopper;
    internal Button[] btnArray;

    // Start is called before the first frame update
    void Start()
    {
        btnArray = buttonFolder.transform.GetComponentsInChildren<Button>();
        boxStopper = false;

        // add listener to all buttons in folder
        foreach (var btn in btnArray)
        {
            btn.onClick.AddListener(() => Click(btn));
        }

        // add listener to back button
        staticFolder.transform.GetChild(3).gameObject.GetComponent<Button>().onClick.AddListener(() => ClickBack());

        //add listener to NoahStart button
        Startbutton.GetComponent<Button>().onClick.AddListener(() => NoahButtonClick());

        //add listener to Box button
        BoxButton.GetComponent<Button>().onClick.AddListener(() => BoxButtonClick());

        //add listener to Open button
        OpenButton.GetComponent<Button>().onClick.AddListener(() => OpenBoxOnClick());

        //add listener to HallwayNoah button
        wallFolder.transform.GetChild(3).gameObject.GetComponent<Button>().onClick.AddListener(() => StartNoahHallwayOnClick());

        //add listener to Special close button
        CloseButton.GetComponent<Button>().onClick.AddListener(() => ClickBackOutBox());
    }

    // Update is called once per frame
    void Update()
    {
        if (!dialogue.firstDialogue)
        {
            if (!boxStopper)
            {
                BoxButton.SetActive(true);
                boxStopper = true;
            }
            wallFolder.SetActive(false);
            dialogue.inkJSONAsset = InkFile;
        }
    }

    void Click(Button btn)
    {
        // shade
        staticFolder.transform.GetChild(0).gameObject.SetActive(true);

        // image
        staticFolder.transform.GetChild(1).gameObject.GetComponent<Image>().sprite = btn.GetComponent<Image>().sprite;
        staticFolder.transform.GetChild(1).gameObject.SetActive(true);

        // description
        staticFolder.transform.GetChild(2).gameObject.GetComponent<TextMeshProUGUI>().text = btn.GetComponentInChildren<TextMeshProUGUI>(true).text;
        staticFolder.transform.GetChild(2).gameObject.SetActive(true);

        // back btn
        staticFolder.transform.GetChild(3).gameObject.SetActive(true);
    }

    void ClickBack()
    {
        // disable all children
        for (int i = 0; i < staticFolder.transform.childCount; i++)
        {
            staticFolder.transform.GetChild(i).gameObject.SetActive(false);

            // disable bar button and temp background.
        }
        for (int i = 0; i < boxFolder.transform.childCount; i++)
        {
            boxFolder.transform.GetChild(i).gameObject.SetActive(false);
        }
        CloseButton.gameObject.SetActive(false);
    }
    
    void ClickBackOutBox()
    {
        // disable all children
        for (int i = 0; i < staticFolder.transform.childCount; i++)
        {
            staticFolder.transform.GetChild(i).gameObject.SetActive(false);

            // disable bar button and temp background.
        }
        for (int i = 0; i < boxFolder.transform.childCount; i++)
        {
            boxFolder.transform.GetChild(i).gameObject.SetActive(false);
        }
        for (int i = 0; i < buttonFolder.transform.childCount; i++)
        {
            buttonFolder.transform.GetChild(i).gameObject.SetActive(false);
        }
        BoxButton.gameObject.SetActive(false);
        CloseButton.gameObject.SetActive(false);
    }

    void DisableAllButtons()
    {
       for (int i = 0;i < buttonFolder.transform.childCount; i++)
        {
            buttonFolder.transform.GetChild(i).gameObject.SetActive(false);
        }
    }

    void NoahButtonClick()
    {
        DisableAllButtons();
        Startbutton.SetActive(false);
    }

    void BoxButtonClick()
    {
        // shade
        staticFolder.transform.GetChild(0).gameObject.SetActive(true);

        // image
        staticFolder.transform.GetChild(1).gameObject.GetComponent<Image>().sprite = BoxButton.GetComponent<Image>().sprite;
        staticFolder.transform.GetChild(1).gameObject.SetActive(true);

        // back btn
        staticFolder.transform.GetChild(3).gameObject.SetActive(true);
        
        OpenButton.gameObject.SetActive(true);
    }

    void OpenBoxOnClick()
    {
        
        //Disable normal back button
        staticFolder.transform.GetChild(3).gameObject.SetActive(false);
        CloseButton.gameObject.SetActive(true);

        dialogue.firstDialogue = false;

        //Disable box image
        staticFolder.transform.GetChild(1).gameObject.SetActive(false);
        for (int i = 0; i <boxFolder.transform.childCount ; i++)
        {
            //if(boxFolder.transform.GetChild(1).gameObject)
            boxFolder.transform.GetChild(i).gameObject.SetActive(true);
        }
        //Disable open button
        OpenButton.gameObject.SetActive(false);
    }

    void StartNoahHallwayOnClick()
    {
        //disable button used
        wallFolder.transform.GetChild(3).gameObject.SetActive(false);

    }


}
