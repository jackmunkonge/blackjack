//
//  Deck.swift
//  Blackjack
//
//  Created by Jack Munkonge on 18/11/2019.
//  Copyright © 2019 MobileDev. All rights reserved.
//

import Foundation

final class Deck {
    private var cards: [Card] = []

    init() {
        for j in 1...13 {
            let value = j > 10 ? 10 : j
            for suit in Suits.allCases {
                cards.append(Card(value: value, suit: suit, title: CardTitles.allCases[j-1])!)
            }
        }

        cards.shuffle()
    }
    
    public func getNext() -> Card {
        return cards.remove(at: cards.endIndex)
    }
}
