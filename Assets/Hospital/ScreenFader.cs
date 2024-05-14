using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ScreenFader : MonoBehaviour
{
    [SerializeField] private Image screenImage; // Reference to the image that covers the screen
    [SerializeField] private Image startButtonImage; // Reference to the start button image
    [SerializeField] private float fadeDuration = 1.0f;
    [SerializeField] private Color startColor; // Default start color is white
    [SerializeField] private Color fadeOutColor; // Default fade-out color is black
    private Color transparentColor = new Color(1, 1, 1, 0); // Transparent color (fully faded)

    private void Start()
    {
        // Start fading effect immediately
        StartFading();
    }

    public void StartFading()
    {
        StartCoroutine(FadeInAndDisable());
    }

    private IEnumerator FadeInAndDisable()
    {
        Color currentColor = startColor; // Start from the specified start color
        float currentFadeTime = 0f;

        while (currentFadeTime < fadeDuration)
        {
            currentFadeTime += Time.deltaTime;
            float t = currentFadeTime / fadeDuration;
            // Interpolate between current color and transparent color
            screenImage.color = Color.Lerp(currentColor, transparentColor, t);
            startButtonImage.color = Color.Lerp(transparentColor, currentColor, t);
            yield return null;
        }

        // After the fading effect is complete, disable the ScreenFader component
        gameObject.SetActive(false);
    }

    public void StartFadeOutAndEnable()
    {
        gameObject.SetActive(true); // Enable the ScreenFader component
        StartCoroutine(FadeOut());
    }

    private IEnumerator FadeOut()
    {
        Color currentColor = transparentColor; // Start from the transparent color
        float currentFadeTime = 0f;

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
