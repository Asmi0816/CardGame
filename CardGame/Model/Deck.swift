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
    internal lazy var cards = [Card()]
    
    
    func shuffleDeck() -> Void
    {
        
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card!
    {
        
        if cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
       
    }
    
    func drawRandomCard() -> Card!
    {
        return nil
    }
    
    
    
}