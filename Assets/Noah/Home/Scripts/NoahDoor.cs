using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class NoahDoor : MonoBehaviour
{
    bool knockedOnce;
    // Start is called before the first frame update
    void Start()
    {
        transform.GetComponent<Button>().onClick.AddListener(() => Click());

        knockedOnce = false;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void Click()
    {
        transform.GetComponent<AudioSource>().Play();

        if (!knockedOnce)
        {
            knockedOnce = true;
            StartCoroutine(Delay());
        }
        
    }

    IEnumerator Delay()
    {
        yield return new WaitForSeconds(2);
        SceneManager.LoadScene("NoahClicking");
        // switch scene
    }
}
