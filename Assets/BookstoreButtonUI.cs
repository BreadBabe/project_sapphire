////using System;
////using Ink.Runtime;
////using UnityEngine;
////using UnityEngine.UI;
////using System.Collections;
////using UnityEngine.SceneManagement;

////public class BookstoreButtonUI : MonoBehaviour
////{
////    [SerializeField] private Button startButton;

////    void Start()
////    {
////        // Inaktivera knappen n�r spelet startar
////        startButton.gameObject.SetActive(false);

////        // Starta en coroutine f�r att visa knappen efter 5 sekunder
////        //StartCoroutine(ShowStartButtonAfterDelay());
////        ShowStartButtonAfterDelay();
////    }

////    IEnumerator ShowStartButtonAfterDelay()
////    {
////        // V�nta i 5 sekunder
////        yield return new WaitForSeconds(5f);

////        // Visa knappen
////        startButton.gameObject.SetActive(true);
////    }

////    // Metod som k�rs n�r knappen trycks
////    public void StartStory()
////    {
////        // H�r kan du l�gga till kod f�r att starta historien
////    }
////}
//using UnityEngine;
//using UnityEngine.UI;
//using System.Collections;

//public class BookstoreButtonUI : MonoBehaviour
//{
//    [SerializeField] private Button startButton;

//    void Start()
//    {
//        if (startButton != null)
//        {
//            Debug.Log("Inaktiverar knappen vid start.");
//            startButton.gameObject.SetActive(false);

//            StartCoroutine(ShowStartButtonAfterDelay());
//        }
//        else
//        {
//            Debug.LogError("StartButton �r inte tilldelad i inspektorn.");
//        }
//    }

//    IEnumerator ShowStartButtonAfterDelay()
//    {
//        Debug.Log("V�ntar i 5 sekunder.");
//        yield return new WaitForSeconds(5f);

//        Debug.Log("Visar knappen efter f�rdr�jning.");
//        startButton.gameObject.SetActive(true);
//    }

//    public void StartStory()
//    {
//        Debug.Log("StartStory-metoden kallad.");
//    }
//}
