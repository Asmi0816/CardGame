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
    fileprivate lazy var clickCount = Int()
    fileprivate lazy var selection = Bool()
    fileprivate lazy var secondarySelection = Bool()
    fileprivate lazy var myGame = MatchingGame()
    
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

    @IBAction func checkDeck(_ sender: UIButton)
    {
        selection = false
        clickCount += 1
        if let currentCard = myGame.gameDeck.drawRandomCard() as? PlayingCard
        {
            switchMatch.setTitle("\(currentCard.getCardData())", for: UIControlState())
            cardOne.setTitle("\(myGame.playerHand[0].getCardData())", for: UIControlState())
            cardTwo.setTitle("\(myGame.playerHand[1].getCardData())", for: UIControlState())
            cardThree.setTitle("\(myGame.playerHand[2].getCardData())", for: UIControlState())
            cardFour.setTitle("\(myGame.playerHand[3].getCardData())", for: UIControlState())
        }
        else
        {
            cardButton.setTitle("Reshuffle deck", for: UIControlState())
        }
        
    }
    
    @IBAction func switchButton(_ sender: UIButton)
    {
       
        selection = !selection
       
        
        if selection == true && secondarySelection == true
        {
           myGame.switchCard()
        }
    }

    @IBAction func cardOne(_ sender: UIButton)
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
