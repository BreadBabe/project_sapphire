using System.Collections;
using System.Collections.Generic;
//using UnityEditor.SearchService;
using UnityEngine;
using UnityEngine.SceneManagement;

class SceneChanger : MonoBehaviour
{
    //Send in the scene name of the scene you want to change to as a string
    public void ChangeScreen(string scene)
    {
        SceneManager.LoadScene(scene);
    }
}
