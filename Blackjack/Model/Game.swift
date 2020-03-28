//
//  Game.swift
//  Blackjack
//
//  Created by Jack Munkonge on 18/02/2020.
//  Copyright © 2020 MobileDev. All rights reserved.
//

import Foundation

final class Game {
    
    var deck: Deck
    var id: String?
    var players: [Player]
    var turnId: String

    
    init(withId id: String, withTurnId turnId: String, withPlayers players: [Player], deck: Deck) {
        self.id = id
        self.turnId = turnId
        self.players = players
        self.deck = deck
    }
    
    public func startGame() {
        if id != nil {
            id = "X"
        }
        
        deck = Deck()
        
        let newPlayer = LivePlayer(withId: "TestPlayer", withHand: Hand(fromDeck: deck))
        let newDealer = Dealer(withHand: Hand(fromDeck: deck))
        newPlayer.playerStatus = .playing
        
        players.append(newDealer)
        players.append(newPlayer)

        nextPlayerTurn()
    }
    
    public func payoutGame() {
        // payout bets
    }

    public func resetGame() {
        startGame()
    }
    
    private func dealerTurn() {
        let index = players.firstIndex(where: {$0.id == "Dealer"})
        turnId = players[index!].id
    }
    
    private func nextPlayerTurn() {
        players.sort(by: { $0.id < $1.id })
        let currentIndex = players.firstIndex(where: {$0.id == turnId})
        let nextIndex = currentIndex == players.count-1 ? 1 : currentIndex!+1
        turnId = players[nextIndex].id
    }
}
