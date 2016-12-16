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
    
    fileprivate func layOutDeck() -> Void
    {
        gameScore = 0
        for cardPlace in 0 ..< 4
        {
             playerHand.append((gameDeck.drawCard() as? PlayingCard)!)
            
        }
        
    }
    
    func switchCard() -> Void
    {
         var tempCard = Card()
         let top = gameDeck.cards.remove(at: 0)
         tempCard = playerHand.remove(at: 0)
         playerHand.insert((top as? PlayingCard)!, at: 0)
         gameDeck.cards.insert(tempCard, at: 0)
    }
    
    func checkMatch() -> Void
    {
        
    }
    
    func playGame() -> Void
    {
        
    }
    
    func setCard() -> Card?
    {
        let currentCard = gameDeck.drawRandomCard()
        gameDeck.cards[0] = currentCard!
        return currentCard
       
    }
    
    
    
    
    
    
}
