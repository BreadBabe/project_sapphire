using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ButtonHomeManager : MonoBehaviour
{
    [SerializeField] GameObject InteractiveButton;
    [SerializeField] GameObject BackButton;
    [SerializeField] List<GameObject> ShowObjects;
    [SerializeField] List<GameObject> HideObjects;

    PhoneUIManager PhoneUIManager;

    // Start is called before the first frame update
    void Start()
    {
        InteractiveButton.SetActive(false);

    }

    public void ButtonPressed()
    {
       if(PhoneUIManager.leisureTime && !PhoneUIManager.PhoneUp)
        {
            foreach (GameObject obj in ShowObjects)
            {
                obj.SetActive(true);
            }

        }
    }

    public void BackButtonPressed()
    {
        foreach(GameObject obj in HideObjects)
        {
            obj.SetActive(false);
        }
    }


        // Update is called once per frame
        void Update()
        {
          
        }


    
}
