using UnityEngine;

public class AudioManager : MonoBehaviour
{
    [SerializeField] private AudioSource barkAudioSource;

    private bool isBarkPlaying = false;

    public void PlayBarkSound()
    {
        if (!isBarkPlaying && barkAudioSource != null && barkAudioSource.clip != null)
        {
            barkAudioSource.PlayOneShot(barkAudioSource.clip);
            isBarkPlaying = true;
        }
    }

    public void ResetBarkState()
    {
        isBarkPlaying = false;
    }
}
