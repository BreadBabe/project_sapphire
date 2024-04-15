using UnityEngine;

public class AudioManager : MonoBehaviour
{
    // Reference to the AudioManager instance
    public static AudioManager instance;

    // Reference to the AudioSource components
    public AudioSource backgroundMusicSource;
    public AudioSource typingSoundSource;

    // Background music AudioClip
    public AudioClip backgroundMusicClip;

    // Typing sound effect AudioClip
    public AudioClip typingSoundClip;

    void Awake()
    {
        // Ensure only one instance of AudioManager exists
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject); // Keep AudioManager alive when loading new scenes
        }
        else
        {
            Destroy(gameObject); // Destroy duplicate AudioManager instances
            return;
        }

        // Check if the background music source and AudioClip are assigned
        if (backgroundMusicSource == null || backgroundMusicClip == null)
        {
            Debug.LogError("Background music source or clip is not set up in AudioManager.");
            return;
        }

        // Check if the typing sound source and AudioClip are assigned
        if (typingSoundSource == null || typingSoundClip == null)
        {
            Debug.LogError("Typing sound source or clip is not set up in AudioManager.");
            return;
        }

        // Set the background music clip and start playing it
        backgroundMusicSource.clip = backgroundMusicClip;
        backgroundMusicSource.Play();
    }

    // Method to play the typing sound effect
    public void PlayTypingSound(float typingSpeed)
    {
        // Calculate the duration of one character based on typing speed
        float timePerCharacter = 1f / typingSpeed;

        // Play the typing sound effect with the calculated duration
        typingSoundSource.clip = typingSoundClip;
        typingSoundSource.PlayDelayed(timePerCharacter);
    }
}
