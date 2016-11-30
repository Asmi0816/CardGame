//
//  MatchingGame.swift
//  CardGame
//
//  Created by Smith, Arick on 11/11/16.
//  Copyright © 2016 Smith, Arick. All rights reserved.
//

import Foundation

class MatchingGame {
    
    internal var gameDeck : PlayingCardDeck
    internal var playerHand : [PlayingCard]
    internal var gameScore : Int
    internal var cardFaceUp : Bool
    
    
    
    init()
    {
        gameDeck = PlayingCardDeck()
        playerHand = [PlayingCard]()
        gameScore = Int(0)
        cardFaceUp = false
        
    }

    func startGame() -> Void
    {
        gameDeck.shuffleDeck()
        layOutDeck()
        
    }
    
    private func layOutDeck() -> Void
    {
        gameScore = 0
        for var cardPlace = 0; cardPlace < 4; cardPlace += 1
        {
             playerHand.append((gameDeck.drawCard() as? PlayingCard)!)
        }
        
    }
    
    private func switchCard() -> Void
    {
    
    }
    
    func checkMatch() -> Void
    {
        
    }
    
    func playGame() -> Void
    {
        
    }
    
    
    
    
    
    
    
}
