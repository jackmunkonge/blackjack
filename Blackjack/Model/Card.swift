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
    enum suit: String {
        case spades
        case clubs
        case hearts
        case diamonds
        
        func suit() -> String {
            return self.rawValue
        }
    }
    
    init(value: Int, suit: String) {
        self.value = value
    }
}
