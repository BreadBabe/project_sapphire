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
////        // Inaktivera knappen när spelet startar
////        startButton.gameObject.SetActive(false);

////        // Starta en coroutine för att visa knappen efter 5 sekunder
////        //StartCoroutine(ShowStartButtonAfterDelay());
////        ShowStartButtonAfterDelay();
////    }

////    IEnumerator ShowStartButtonAfterDelay()
////    {
////        // Vänta i 5 sekunder
////        yield return new WaitForSeconds(5f);

////        // Visa knappen
////        startButton.gameObject.SetActive(true);
////    }

////    // Metod som körs när knappen trycks
////    public void StartStory()
////    {
////        // Här kan du lägga till kod för att starta historien
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
//            Debug.LogError("StartButton är inte tilldelad i inspektorn.");
//        }
//    }

//    IEnumerator ShowStartButtonAfterDelay()
//    {
//        Debug.Log("Väntar i 5 sekunder.");
//        yield return new WaitForSeconds(5f);

//        Debug.Log("Visar knappen efter fördröjning.");
//        startButton.gameObject.SetActive(true);
//    }

//    public void StartStory()
//    {
//        Debug.Log("StartStory-metoden kallad.");
//    }
//}
