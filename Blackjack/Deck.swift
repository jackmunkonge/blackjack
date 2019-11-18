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
    // Veli - I still dont think we should have titles as an enum in the Card class, if we do we need to include the numbers as well imo
    let titles = ["2", "3", "4", "5", "6", "7", "8", "9", "10", Card.titles.jack.rawValue, Card.titles.queen.rawValue, Card.titles.king.rawValue, Card.titles.ace.rawValue]

    init() {
        for j in 0...12 {
          cards.append(Card(value: j, suit: Card.suit.spades.rawValue, title: String(titles[j])))
          cards.append(Card(value: j, suit: Card.suit.diamonds.rawValue, title: String(titles[j])))
          cards.append(Card(value: j, suit: Card.suit.clubs.rawValue, title: String(titles[j])))
          cards.append(Card(value: j, suit: Card.suit.hearts.rawValue, title: String(titles[j])))
        }
        
//        cards.append(Card(value: 10, suit: Card.suit.spades.rawValue), title: Card.titles.jack)

        cards.shuffle()
    }
    
    public func getNext() -> Card {
        return cards.remove(at: cards.endIndex)
    }
}
