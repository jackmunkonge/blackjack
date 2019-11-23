//
//  Player.swift
//  Blackjack
//
//  Created by Jack Munkonge on 22/11/2019.
//  Copyright © 2019 MobileDev. All rights reserved.
//

import Foundation

protocol Player {
    var hand: Hand { get set }
    
    func hit(fromDeck deck: Deck)
    func stand()
}
