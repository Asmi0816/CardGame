//
//  CardGameController.swift
//  CardGame
//
//  Created by Smith, Arick on 10/27/16.
//  Copyright © 2016 Smith, Arick. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    
    
    
    @IBOutlet weak var gameLabel: UILabel!
    
    @IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString())
    }
    
    
    
    
    @IBAction func buttonClick(sender: UIButton)
    {
        performSegueWithIdentifier("toMatchingGameFromMain", sender: sender)
    }
    
}
