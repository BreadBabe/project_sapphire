using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class LiquidScript : MonoBehaviour
{
    [SerializeField] private GameObject bottle1;

    [SerializeField] private GameObject droplet1;
    [SerializeField] private GameObject liquid1;

    [SerializeField] private GameObject liquidController;

    private int liquidWidth;
    private int liquidHeight;

    private int dropletWidth;


    // Start is called before the first frame update
    void Start()
    {
        liquidHeight = 9;
        liquidWidth = 7;

        dropletWidth = (int)droplet1.transform.localScale.x;


        // fill bottle ?
        for (int y = 1; y <= liquidHeight; y = y+dropletWidth)
        {
            for (int x = -liquidWidth; x <= liquidWidth; x = x + dropletWidth)
            {
                for (int z = -liquidWidth; z <= liquidWidth; z = z + dropletWidth)
                {
                    Instantiate(droplet1, new Vector3(x, liquidController.transform.position.y + y, z), Quaternion.identity, liquid1.transform);

                }
            }
        }

        //StartCoroutine(PourBottle());
    }

    // Update is called once per frame
    void Update()
    {
        Vector2 mousePosition = Camera.main.ScreenToWorldPoint(Input.mousePosition);

        /*
        bottle1.transform.Rotate(new Vector3(0, 0, 0.1f));
        */
    }

    IEnumerator PourBottle()
    {
        while (true)
        {
            yield return new WaitForSecondsRealtime(0.1f);

            bottle1.transform.Rotate(new Vector3(0, 0, 1));

            //yield return null;
        }
    }
}
