using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class dinoObstacles : MonoBehaviour
{
    [SerializeField] private GameObject gameAnchor;

    [SerializeField] private GameObject obstacleCube;
    [SerializeField] private GameObject obstacleSphere;
    [SerializeField] private GameObject obstacleCyl;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        ReuseObject(obstacleCube);
        ReuseObject(obstacleSphere);
        ReuseObject(obstacleCyl);
    }

    void ReuseObject(GameObject go)
    {
        if(gameAnchor.transform.position.x - go.transform.position.x > 20)
        {
            go.transform.position += transform.right * 40;
        }
    }
}
