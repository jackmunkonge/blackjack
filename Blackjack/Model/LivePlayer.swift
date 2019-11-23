//
//  LivePlayer.swift
//  Blackjack
//
//  Created by Jack Munkonge on 22/11/2019.
//  Copyright © 2019 MobileDev. All rights reserved.
//

import Foundation

final class LivePlayer: Player {
    
    let id: String
    var hand: Hand
    var live = false
    var wins = 0
    var losses = 0
    
    init(withId id: String, withHand hand: Hand, live: Bool, withWins wins: Int, withLosses losses: Int) {
        self.id = id
        self.hand = hand
        self.live = live
        self.wins = wins
        self.losses = losses
    }
    
    init(withId id: String, withHand hand: Hand) {
        self.id = id
        self.hand = hand
    }
    
    convenience init(withId id: String) {
        self.init(withId: id, withHand: Hand())
    }
    
    public func hit(fromDeck deck: Deck) {
        self.hand.addCard(withCard: deck.getNext())
    }
    
    public func stand() {
        //TODO: Add call to game manager (end turn)
    }
}
