using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;

public class MusicScript : MonoBehaviour
{
    private AudioSource audioSource;
    private bool isPlaying = false;
    // Start is called before the first frame update
    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }
    public void Music()
    {
        if (isPlaying)
        {
            StopMusic();
        }
        else 
        {
            PlayMusic();
        }
    }
    void PlayMusic()
    {
        audioSource.Play();
        isPlaying = true;
    }
    void StopMusic()
    {
        audioSource.Stop();
        isPlaying = false;
    }
    // Update is called once per frame
    void Update()
    {

    }
}
