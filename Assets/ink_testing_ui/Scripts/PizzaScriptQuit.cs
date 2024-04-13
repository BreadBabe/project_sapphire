using UnityEngine;

public class PizzaScriptQuit : MonoBehaviour {
	
	public KeyCode key = KeyCode.Escape;
	
	void Update () {
		if(Input.GetKeyDown(key)) Application.Quit();
	}
}