//
//  MatchingGame.swift
//  CardGame
//
//  Created by Smith, Arick on 11/11/16.
//  Copyright © 2016 Smith, Arick. All rights reserved.
//

import Foundation

class MatchingGame
{
    
    internal var gameDeck : PlayingCardDeck
    internal var tempDeck : PlayingCardDeck
    internal var gameScore : Int
    internal var cardFaceUp : Bool
    
    
    
    init()
    {
        gameDeck = PlayingCardDeck()
        tempDeck = PlayingCardDeck()
        gameScore = 0
        cardFaceUp = false
        
    }
    
    func startGame() -> Void
    {
        gameScore = 0
        
        for var firstDeck = 1; firstDeck <= PlayingCardDeck(); firstDeck += 2
        {
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    
}
