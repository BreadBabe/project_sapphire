using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class dinoMovement : MonoBehaviour
{
    [SerializeField] private GameObject gameAnchor;

    private Rigidbody rb;

    private int force_mod_x;
    private int force_mod_y;

    // Start is called before the first frame update
    void Start()
    {
        rb = gameObject.GetComponent<Rigidbody>();

        force_mod_x = 1;
        force_mod_y = 1;
    }

    // Update is called once per frame
    void Update()
    {
        // fix anchor to horizontal player movement
        gameAnchor.transform.position = transform.right * transform.position.x;
    }

    private void FixedUpdate()
    {
        // h movement
        float h_axis = Input.GetAxisRaw("Horizontal");
        rb.AddForce(transform.right * h_axis * force_mod_x, ForceMode.Impulse);

        // v movement
        if (Input.GetKey(KeyCode.Space))
            rb.AddForce(transform.up * force_mod_y, ForceMode.Impulse);
    }
}
