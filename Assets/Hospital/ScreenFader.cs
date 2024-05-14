using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class ScreenFader : MonoBehaviour
{
    [SerializeField] private Image screenImage; // Reference to the image that covers the screen
    [SerializeField] private Image startButtonImage; // Reference to the start button image
    [SerializeField] private float fadeDuration = 1.0f;
    [SerializeField] private Color startColor; // Default start color is white
    [SerializeField] private Color fadeOutColor;// Default fade-out color is black
    private Color transparentColor = new Color(1, 1, 1, 0); // Transparent color (fully faded)
    private Color hospitalButtonColor = new Color(1, 1, 1, 0.4f);

    private float currentFadeTime = 0f;

    void Start()
    {
        // Start fading effect immediately
        StartFading();
    }

    public void StartFading()
    {
        StartCoroutine(Fade());
    }

    public void StartFadeOut()
    {
        StartCoroutine(FadeOut());
    }

    public IEnumerator Fade()
    {
        Color currentColor = startColor; // Start from the specified start color
        currentFadeTime = 0f;

        while (currentFadeTime < fadeDuration)
        {
            currentFadeTime += Time.deltaTime;
            float t = currentFadeTime / fadeDuration;
            // Interpolate between current color and transparent color
            screenImage.color = Color.Lerp(currentColor, transparentColor, t);
            startButtonImage.color = Color.Lerp(transparentColor, currentColor, t);
            yield return null;
        }
    }

    public IEnumerator FadeOut()
    {
        Color currentColor = transparentColor; // Start from the transparent color
        currentFadeTime = 0f;

        while (currentFadeTime < fadeDuration)
        {
            currentFadeTime += Time.deltaTime;
            float t = currentFadeTime / fadeDuration;
            // Interpolate between transparent color and fade-out color
            screenImage.color = Color.Lerp(currentColor, fadeOutColor, t);
            startButtonImage.color = Color.Lerp(fadeOutColor, currentColor, t);
            yield return null;
        }
    }
}
