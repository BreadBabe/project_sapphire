using System.Collections;
using System.Collections.Generic;
using System.Linq.Expressions;
using UnityEngine;
using UnityEngine.UI;

public class DialogueAppear : MonoBehaviour
{
    public bool ShowDialogue;
    [SerializeField]public List<GameObject> UIElements = new List<GameObject>();
    public GameObject Button;
    // Start is called before the first frame update
    public void Start()
    {
        foreach (GameObject element in UIElements)
        {
            element.gameObject.SetActive(false);
        }
    }

    public void Update()
    {
        foreach(GameObject element in UIElements)
        {
            if (ShowDialogue)
            {
                element.gameObject.SetActive(true);
                Button.gameObject.SetActive(false);
            }
        }
    }
    public void OnButtonPressed()
    {
        ShowDialogue = true;
    }

   


}
