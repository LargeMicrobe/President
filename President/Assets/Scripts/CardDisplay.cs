using UnityEngine;
using UnityEditor.UI;
using TMPro;
using BigGerm;
using UnityEngine.UI;

public class CardDisplay : MonoBehaviour
{

    public Card cardData;

    public Image cardImage;


    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        updateCardDisplay();
            
    }

    public void updateCardDisplay()
    {
        if (cardData != null && cardImage != null)
        {  
            cardImage.sprite = cardData.cardImage;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
