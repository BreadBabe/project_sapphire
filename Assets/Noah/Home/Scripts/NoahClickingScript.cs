using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

internal class NoahClickingScript : MonoBehaviour
{
    // empty objects, folders
    [SerializeField] internal GameObject staticFolder;
    [SerializeField] internal GameObject buttonFolder;

    internal Button[] btnArray;

    // Start is called before the first frame update
    void Start()
    {
        btnArray = buttonFolder.transform.GetComponentsInChildren<Button>();

        // add listener to all buttons in folder
        foreach (var btn in btnArray)
        {
            btn.onClick.AddListener(() => Click(btn));
        }

        // add listener to back button
        staticFolder.transform.GetChild(3).gameObject.GetComponent<Button>().onClick.AddListener(() => ClickBack());
    }

    // Update is called once per frame
    void Update()
    {
        
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
    }
}
