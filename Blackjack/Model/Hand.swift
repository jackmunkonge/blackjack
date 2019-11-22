//
//  Hand.swift
//  Blackjack
//
//  Created by Jack Munkonge on 21/11/2019.
//  Copyright © 2019 MobileDev. All rights reserved.
//

import Foundation

class Hand {
    let cards: [Card]
    
    init() {
        let randomCard = Card()
        self.cards = [randomCard, randomCard]
    }
}

