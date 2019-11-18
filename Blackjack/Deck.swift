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
    let titles = [Card.titles.jack, Card.titles.queen, Card.titles.king, Card.titles.ace]
    
    init() {
        for j in 1...10 {
            cards.append(Card(value: j, suit: Card.suit.spades.rawValue))
            cards.append(Card(value: j, suit: Card.suit.clubs.rawValue))
            cards.append(Card(value: j, suit: Card.suit.hearts.rawValue))
            cards.append(Card(value: j, suit: Card.suit.diamonds.rawValue))
        }
        
//        cards.append(Card(value: 10, suit: Card.suit.spades.rawValue), title: Card.titles.jack)

        cards.shuffle()
    }
    
    public func getNext() -> Card {
        return cards.remove(at: cards.endIndex)
    }
}
