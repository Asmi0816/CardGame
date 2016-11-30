//
//  MatchingGameController.swift
//  CardGame
//
//  Created by Smith, Arick on 11/28/16.
//  Copyright © 2016 Smith, Arick. All rights reserved.
//

import UIKit

class MatchingGameController : UIViewController
{
    private lazy var clickCount = Int()
    private lazy var cardDeck = PlayingCardDeck()
    
    @IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString)
    }

    @IBAction func checkDeck(sender: UIButton)
    {
        clickCount += 1
        if let currentCard = cardDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            cardButton.setTitle("Reshuffle deck", forState: UIControlState.Normal)
        }
        
    }
    


}