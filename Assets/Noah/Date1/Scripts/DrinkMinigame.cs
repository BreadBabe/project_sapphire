using Ink.Parsed;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;

public class DrinkMinigame : MonoBehaviour
{
    [SerializeField] private GameObject mgStart;
    [SerializeField] private GameObject mgParent;
    [SerializeField] private GameObject bottleChoice;

    private int choiceAmount;
    private int mgWidth;
    private int pickAmount;

    List<string> mixList;
    List<string> pickList;

    void Awake()
    {
        choiceAmount = 5 + 1; // +1 for gap on side
        pickAmount = 0;
        mgWidth = 1920;

        mixList = new List<string>()
        {
            "Water",
            "Pepsi",
            "Cola",
            "Sprite",
            "Dr. Pepper"
        };

        pickList = new List<string>();

        mgStart.GetComponent<Button>().onClick.AddListener(StartMinigame);
    }

    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
    }

    void StartMinigame()
    {
        int choiceDelta = mgWidth / choiceAmount;

        foreach (var mix in mixList)
        {
            // add new instansiation to instance reference object
            GameObject insRef = Instantiate(bottleChoice, new Vector3((mixList.IndexOf(mix)+1) * choiceDelta, mgParent.transform.position.y, mgParent.transform.localPosition.z), Quaternion.identity, mgParent.transform);


            insRef.name = mix;
            insRef.GetComponentInChildren<TextMeshProUGUI>().text = mix;

            insRef.GetComponent<Button>().onClick.AddListener(() => ChoiceClick(insRef, mixList.IndexOf(mix)));
        }
    }

    void ChoiceClick(GameObject choice, int index)
    {
        pickAmount++;
        pickList.Add(choice.name);

        Destroy(choice);

        Debug.Log($"player picked bottle index: {index}, bottle name: {choice.name}, has now picked: {pickAmount} bottle(s).");

        // pick logic
        if (pickAmount >= 3)
        {
            // switch scene maybe --->

            Debug.Log("minigame done, choices saved in list");

            for (int i = 0; i < mgParent.transform.childCount; i++)
            {
                Destroy(mgParent.transform.GetChild(i).gameObject);

            }
        }
    }
}
