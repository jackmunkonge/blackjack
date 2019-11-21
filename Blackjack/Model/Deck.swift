//
//  Deck.swift
//  Blackjack
//
//  Created by Jack Munkonge on 18/11/2019.
//  Copyright © 2019 MobileDev. All rights reserved.
//

import Foundation

class Deck {
    var cards: [Card] = []
    
    let titles = [Royals.ace, "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", Royals.jack, Royals.queen, Royals.king]

    init() {
        for j in 1...13 {
            cards.append(Card(value: j, suit: .spades, title: titles[j-1]))
            cards.append(Card(value: j, suit: .diamonds, title: titles[j-1]))
            cards.append(Card(value: j, suit: .clubs, title: titles[j-1]))
            cards.append(Card(value: j, suit: .hearts, title: titles[j-1]))
        }

        cards.shuffle()
    }
    
    public func getNext() -> Card {
        return cards.remove(at: cards.endIndex)
    }
}
