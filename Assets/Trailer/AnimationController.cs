using UnityEngine;
using System.Collections;

public class AnimationController : MonoBehaviour
{
    [System.Serializable]
    public class Character
    {
        public GameObject characterObject;  // Character GameObject
        public Animator animator;           // Animator component of the character
        public float displayTime = 2f;     // Time each character remains on screen before animation starts
    }

    public Character[] characters; // Array to hold character data

    void Start()
    {
        // Start the coroutine to play animations in sequence
        StartCoroutine(PlayCharacterSequence());
    }

    IEnumerator PlayCharacterSequence()
    {
        foreach (Character character in characters)
        {
            // Activate the character
            character.characterObject.SetActive(true);

            // Pause the animation
            character.animator.speed = 0f;

            // Wait for the specified display time
            yield return new WaitForSeconds(character.displayTime);

            // Resume the animation
            character.animator.speed = 1f;
        }
    }
}
