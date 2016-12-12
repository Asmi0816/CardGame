//
//  Deck.swift
//  CardGame
//
//  Created by Smith, Arick on 10/31/16.
//  Copyright © 2016 Smith, Arick. All rights reserved.
//

import Foundation


class Deck
{
    internal lazy var cards = [Card]()
    
    
    func shuffleDeck() -> Void
    {
        //Created tep variablto hold cars that will get shuffled
        var tempDeck = [Card]()
        
        //Repete until tthe card data member is empty.
        while self.cards.count > 0
            {
                    //Get a random card between 0...cards.count-1
                    let randomIndex = Int (arc4random() % (UInt32)(cards.count))
                
                    //Remove card from that index of the deck
                    let removedCard = cards.remove(at: randomIndex)
                
                    //Places card in a temp array
                    tempDeck.append(removedCard)
            }
        
        //Replaces deck with temp deck
       self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card?
    {
        if cards.count > 0
        {
            return cards.remove(at: 0)
        }
            
        else
        {
            return nil
        }
    }
    
    
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = Int(arc4random() % (UInt32)(cards.count))
            return cards.remove(at: randomIndex)
        }
            
        else
        {
            return nil
        }
        
        
    }
    
    
    
}
