using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class chanceMessage : MonoBehaviour
{


    [SerializeField] PhoneUIManager phoneUIman;
    [SerializeField] Button myButton;

    [SerializeField] Sprite LunaMessage, NoahMessage, QuinnMessage, SummerMessage;



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
                myButton.image.sprite = QuinnMessage;
                break;
            case PhoneUIManager.DatingAppStates.Luna:
                myButton.image.sprite = LunaMessage;
                break;
            case PhoneUIManager.DatingAppStates.Summer:
                myButton.image.sprite = SummerMessage;
                break;
            case PhoneUIManager.DatingAppStates.Noah:
                myButton.image.sprite = NoahMessage;
                break;
        }

    }
}
