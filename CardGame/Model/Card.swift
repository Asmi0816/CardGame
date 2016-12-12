//
//  Card.swift
//  CardGame
//
//  Created by Smith, Arick on 10/25/16.
//  Copyright © 2016 Smith, Arick. All rights reserved.
//



class Card
{
    
    internal var isFaceUp : Bool
   
    
    init()
    {
       
        isFaceUp = false
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func setFacingUp(_ isFaceUp: Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
       func toString() -> String
    {
        let description = "This card is \(isFaceUp)"
        return description
    }
    
}
