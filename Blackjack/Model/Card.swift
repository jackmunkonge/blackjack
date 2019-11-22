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
    let title: CardTitles
    var facingUp = false
        
    init() {
        let value = Int.random(in: 1...10)
        let suitIndex = Int.random(in: 0...3)
        let cardTitleIndex: Int
        
        if value == 10 {
            cardTitleIndex = Int.random(in: 9...12)
        } else {
            cardTitleIndex = value - 1
        }
        
        self.value = value
        self.suit = Suits.allCases[suitIndex]
        self.title = CardTitles.allCases[cardTitleIndex]
    }
    
    init?(value: Int, suit: Suits, title: CardTitles) {
        if value > 10 { return nil }
        
        self.value = value
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
