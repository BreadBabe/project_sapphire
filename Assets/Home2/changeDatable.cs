using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class changeDatable : MonoBehaviour
{


    [SerializeField] PhoneUIManager phoneUIman;
    [SerializeField] Button myButton;

    [SerializeField] Sprite LunaApp, NoahApp, QuinnApp, SummerApp;

    // Start is called before the first frame update
    void Start()
    {
        myButton = GetComponent<Button>();
    }

    // Update is called once per frame
    void Update()
    {
        switch (phoneUIman.datingAppState)
        {
            case PhoneUIManager.DatingAppStates.Quinn:
                myButton.image.sprite = QuinnApp;
                break;
            case PhoneUIManager.DatingAppStates.Luna:
                myButton.image.sprite = LunaApp;
                break;
            case PhoneUIManager.DatingAppStates.Summer:
                myButton.image.sprite= SummerApp;
                break;
            case PhoneUIManager.DatingAppStates.Noah:
                myButton.image.sprite = NoahApp;
                break;
        }
     
    }
}
