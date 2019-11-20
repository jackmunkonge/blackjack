//
//  Card.swift
//  Blackjack
//
//  Created by Jack Munkonge on 08/10/2019.
//  Copyright © 2019 MobileDev. All rights reserved.
//

import Foundation

struct Card {
    let value: Int
    let suit: String
    let title: String?
    var facingUp = false
    
    enum titles: String {
        case jack
        case queen
        case king
        case ace
        
        func title() -> String {
            return self.rawValue
        }
    }
    
    enum suit: String {
        case spades
        case clubs
        case hearts
        case diamonds
        
        func suit() -> String {
            return self.rawValue
        }
    }
        
    init(value: Int, suit: String, title: String? = nil) {
        self.value = value > 10 ? 10 : value
        self.suit = suit
        self.title = title
    }

    public func isFacingUp() -> Bool {
        return facingUp
    }
    
    public mutating func flipCard() {
        self.facingUp.toggle()
    }
}
