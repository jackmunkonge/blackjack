//
//  Hand.swift
//  Blackjack
//
//  Created by Jack Munkonge on 21/11/2019.
//  Copyright © 2019 MobileDev. All rights reserved.
//

import Foundation

final class Hand {
    public private(set) var cards: [Card] {
        didSet {
            calculateHandValues()
        }
    }
    public private(set) var flopped = false
    public private(set) var softValue = 0
    public private(set) var hardValue = 0
    
    init() {
        self.cards = [Card(), Card()]
    }
    
    init(fromDeck deck: Deck) {
        self.cards = [deck.getNext(), deck.getNext()]
    }
    
    public func flop() {
        for i in 0..<cards.count {
            self.cards[i].faceDown()
        }
    }
    
    public func showHand() {
        for i in 0..<cards.count {
            self.cards[i].faceUp()
        }
    }
    
    private func calculateHandValues() {
        var softValue = 0
        var hardValue = 0
        
        for card in cards {
            if card.title == .ace {
                softValue += 1
                hardValue += 11
            } else {
                softValue += card.value
                hardValue += card.value
            }
        }
        
        self.softValue = softValue
        self.hardValue = hardValue
    }
}

