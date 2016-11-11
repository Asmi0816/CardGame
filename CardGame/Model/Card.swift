//
//  Card.swift
//  CardGame
//
//  Created by Smith, Arick on 10/25/16.
//  Copyright © 2016 Smith, Arick. All rights reserved.
//

import UIKit

class Card
{
    internal var backImage : UIImage
    internal var isFaceUp : Bool
   
    
    init()
    {
        backImage = UIImage(named: "Monstar")!
        isFaceUp = false
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func setFacingUp(isFaceUp: Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    func setBackImage (backImage : UIImage)
    {
        self.backImage = backImage
    }
    
    func toString() -> String
    {
        let description = "This card is \(isFaceUp) and \(self.getBackImage()) is the image."
        return description
    }
    
}
