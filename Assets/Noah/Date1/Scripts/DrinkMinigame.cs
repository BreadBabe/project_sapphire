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
    [SerializeField] private Image mgBackground;
    [SerializeField] private GameObject mgParent;
    [SerializeField] private GameObject bottleChoice;
    [SerializeField] private Button NoahButton;
    [SerializeField] private NoahDialogueManager dialogue;
    [SerializeField] private TextAsset BadEnding;
    [SerializeField] private TextAsset GoodEnding;
    [SerializeField] private GameObject imageBox;

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
        NoahButton.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
    }

    void StartMinigame()
    {
        mgStart.gameObject.SetActive(false);
        mgBackground.gameObject.SetActive(true);

        int choiceDelta = mgWidth / choiceAmount;
        int i = 0;

        foreach (var mix in mixList)
        {
            // add new instansiation to instance reference object
            GameObject insRef = Instantiate(bottleChoice, new Vector3((mixList.IndexOf(mix)+1) * choiceDelta, mgParent.transform.position.y, mgParent.transform.localPosition.z), Quaternion.identity, mgParent.transform);

            Sprite spr = imageBox.transform.GetChild(i).GetComponent<Image>().sprite;

            insRef.GetComponent<Image>().sprite = spr;

            insRef.name = mix;
            insRef.GetComponentInChildren<TextMeshProUGUI>().text = "";

            insRef.GetComponent<Button>().onClick.AddListener(() => ChoiceClick(insRef, mixList.IndexOf(mix)));

            i++;
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
            NoahButton.gameObject.SetActive(true);
            mgBackground.gameObject.SetActive(false);
            //
            if(mixingScore == 0 ||  mixingScore < 0)
            {
                dialogue.InkFile = BadEnding;
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
