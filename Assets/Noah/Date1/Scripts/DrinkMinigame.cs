using Ink.Parsed;
using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
using UnityEditor.ShaderGraph.Serialization;
using UnityEngine;
using UnityEngine.UI;

public class DrinkMinigame : MonoBehaviour
{
    [SerializeField] private GameObject mgStart;
    [SerializeField] private GameObject mgParent;
    [SerializeField] private GameObject bottleChoice;
    [SerializeField] private Button NoahButton;
    [SerializeField] private NoahDialogueManager dialogue;
    [SerializeField] private TextAsset BadEnding;
    [SerializeField] private TextAsset GoodEnding;

    private int choiceAmount;
    private int mgWidth;
    private int pickAmount;
    public int mixingScore;

    List<string> mixList;
    List<string> pickList;

    void Awake()
    {
        choiceAmount = 5 + 1; // +1 for gap on side
        pickAmount = 0;
        mgWidth = 1920;

        mixList = new List<string>()
        {
            "Absolut Vodka",
            "Schweppes Lemon",
            "Coke",
            "Orange Fanta",
            "Dr.Pepper"
        };

        pickList = new List<string>();

        mgStart.GetComponent<Button>().onClick.AddListener(StartMinigame);
    }

    // Start is called before the first frame update
    void Start()
    {
        NoahButton.interactable = false;
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

        ScoreCalculation(choice.name);

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

            //Enables Noah the start button
            NoahButton.interactable = true;
            //
            if(mixingScore == 0 ||  mixingScore < 0)
            {
                dialogue.InkFile = /*BadEnding*/GoodEnding;
            }
            if (mixingScore > 0)
            {
                dialogue.InkFile = GoodEnding;
            }

        }
    }

    private void ScoreCalculation(string name)
    {
        switch (name)
        {
            case "Absolut Vodka":
                break;
            case "Coke":
                mixingScore += 1;
                break;
            case "Orange Fanta":
                break;
            case "Schweppes Lemon":
                mixingScore += 1;
                break;
            case "Dr.Pepper":
                mixingScore -= 1;
                break;
        }
    }
}
