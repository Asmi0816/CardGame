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
    
    private lazy var clickCount = Int()
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString())
    }
    
    
    @IBAction func cardClick(sender: UIButton)
    {
        
    }
}
