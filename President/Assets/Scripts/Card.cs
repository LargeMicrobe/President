using System.Collections;
using System.Collections.Generic;   
using UnityEngine;

namespace BigGerm 
{ 
    [CreateAssetMenu(fileName = "New Card", menuName = "Card")]

    public class Card : ScriptableObject
    {
        public string cardName;
        public string cardSuit;
        public int cardRank;
        public Sprite cardImage;

        public enum CardSuit
        {
            Hearts,
            Diamonds,
            Clubs,
            Spades
        }

        public enum CardRank
        {
            Three = 1,
            Four,
            Five,
            Six,
            Seven,
            Eight,
            Nine,
            Ten,
            Jack,
            Queen,
            King,
            Ace,
            Two
        }
        
            
        
    }
    
}
