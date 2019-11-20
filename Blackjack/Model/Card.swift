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
    let suit: Suits
    let title: String
    var facingUp = false
        
    init(value: Int, suit: Suits, title: String) {
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
