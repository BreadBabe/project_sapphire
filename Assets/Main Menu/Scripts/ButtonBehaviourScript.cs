using System.Collections;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// The following scripts controls the behaviour of the buttons on the main menu
/// </summary>
public class ButtonBehaviourScript : MonoBehaviour
{
    [SerializeField]
    private GameObject startbutton;
    [SerializeField]
    private GameObject button;
    private SceneChanger sceneChanger; //Script for changing scene
    [SerializeField]
    private string sceneToLoad; //string with the same name as the scene you want to change to

    // Start is called before the first frame update
    void Start()
    {
        sceneChanger = new SceneChanger();
        startbutton.GetComponent<Button>().onClick.AddListener(OnClick);
    }

    private IEnumerator SleepDestroy()
    {
        yield return new WaitForSeconds(0.30f);
        //Debug.Log("Destroy");
        Destroy(startbutton);
        yield return null;
    }

    void OnClick()
    {
        //StartCoroutine(SleepDestroy());
        
        sceneChanger.ChangeScreen(sceneToLoad);
    }

// Update is called once per frame
void Update()
    {
    }
}