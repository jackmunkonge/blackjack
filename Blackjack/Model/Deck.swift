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
            cards.append(Card(value: j, suit: Suits.spades, title: titles[j]))
            cards.append(Card(value: j, suit: Suits.diamonds, title: titles[j]))
            cards.append(Card(value: j, suit: Suits.clubs, title: titles[j]))
            cards.append(Card(value: j, suit: Suits.hearts, title: titles[j]))
        }

        cards.shuffle()
    }
    
    public func getNext() -> Card {
        return cards.remove(at: cards.endIndex)
    }
}
