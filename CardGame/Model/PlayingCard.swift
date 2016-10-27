//
//  PlayingCard.swift
//  CardGame
//
//  Created by Smith, Arick on 10/25/16.
//  Copyright © 2016 Smith, Arick. All rights reserved.
//

import UIKit

class PlayingCard : Card

{
    
    
    
    
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
        
    }
    
    private var suit : String
    {
        get
        {
            return self.suit
        }
        set(suit)
        {
            self.suit = suit
        }
        
        
    }
    
    private var color : UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
        
        
        
    }
    
    
    override init()
    {
        super.init()
        rank = 0
        suit = ""
        color = UIColor()
    }
    
    func getRank() -> Int
    {
        return rank
        
    }
    
    func getSuit() -> String
    
    {
        return suit
    }
    
    func getColor() -> UIColor
    
    {
        return color
    }
    
    override func toString() -> String
    
    {
        let description = "The playing card rank is: \(rank) and its suit is \(suit). It has a color of \(color)"
        return description
    }
    
    
}
