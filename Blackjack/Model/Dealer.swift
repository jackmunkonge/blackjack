//
//  Dealer.swift
//  Blackjack
//
//  Created by Jack Munkonge on 03/12/2019.
//  Copyright © 2019 MobileDev. All rights reserved.
//

import Foundation

final class Dealer: Player {
    
    var hand: Hand
    
    init(withHand hand: Hand) {
        self.hand = hand
    }
    
    public func hit(fromDeck deck: Deck) {
        self.hand.add(card: deck.getNext())
    }
    
    public func stand() {
        //TODO: Add call to game manager (end turn)
    }
}
