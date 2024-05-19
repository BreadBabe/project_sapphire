using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class SceneFader : MonoBehaviour
{
    public Image fadeImage;
    public GameObject dialogueManager;
    public float fadeSpeed = 1f;

    void Start()
    {
        StartCoroutine(FadeIn());
    }

    IEnumerator FadeIn()
    {
        fadeImage.gameObject.SetActive(true);
        Color color = fadeImage.color;
        while (color.a > 0)
        {
            color.a -= fadeSpeed * Time.deltaTime;
            fadeImage.color = color;
            yield return null;
        }
        fadeImage.gameObject.SetActive(false);
    }
}
