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
    private lazy var selection = Bool()
    private lazy var secondarySelection = Bool()
    private lazy var myGame = MatchingGame()
    
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var switchMatch: UIButton!
    @IBOutlet weak var cardOne: UIButton!
    @IBOutlet weak var cardTwo: UIButton!
    @IBOutlet weak var cardThree: UIButton!
    @IBOutlet weak var cardFour: UIButton!
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString)
        selection = false
        secondarySelection = false
        myGame.startGame()
    }

    @IBAction func checkDeck(sender: UIButton)
    {
        selection = false
        clickCount += 1
        if let currentCard = myGame.gameDeck.drawRandomCard() as? PlayingCard
        {
            switchMatch.setTitle("\(currentCard.getCardData())", forState: UIControlState.Normal)
            cardOne.setTitle("\(myGame.playerHand[0].getCardData())", forState: UIControlState.Normal)
            cardTwo.setTitle("\(myGame.playerHand[1].getCardData())", forState: UIControlState.Normal)
            cardThree.setTitle("\(myGame.playerHand[2].getCardData())", forState: UIControlState.Normal)
            cardFour.setTitle("\(myGame.playerHand[3].getCardData())", forState: UIControlState.Normal)
        }
        else
        {
            cardButton.setTitle("Reshuffle deck", forState: UIControlState.Normal)
        }
        
    }
    
    @IBAction func switchButton(sender: UIButton)
    {
       
        selection = !selection
        
        if selection == true && secondarySelection == true
        {
            
        }
    }

    @IBAction func cardOne(sender: UIButton)
    {
        
        if secondarySelection == false
        {
        secondarySelection = true
        }
        else if secondarySelection == true
        {
            secondarySelection = false
        }

    }

}