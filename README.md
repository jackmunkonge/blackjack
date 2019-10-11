# blackjack
The goal of this project is to produce a mobile game that allows multiple players to play blackjack with the fundamental rules and a barebones UI. 

![Card values](https://www.blackjack.org/wp-content/uploads/2018/12/Blackjack-values.png)

## Basic Rules
The aim in any round of blackjack is to beat the dealer. This is can be achieved in three ways:
1. Draw a higher value hand than the dealer under 21
2. The dealer draws a hand over 21 
3. Start with 21 when the dealer doesn’t

You can also lose to the dealer in two different ways:

1. Your hand value exceeds 21
2. The dealer’s hand value exceeds yours at the end of play

Although others can play simultaneously against the same dealer, this **does not** affect the fact that the game is effectively only between you and the dealer.

The typical sequence of play:

1. Players buy in with the amount of money they want to sit with (usually at a required minimum/maximum)
2. Players place a bet (again, usually at a required minimum/maximum)
3. Dealer deals out clockwise one card for themselves face up, and one card for each player face up
4. Dealer deals out clockwise one card for themselves face down, and one card for each player face up
5. Player to the left of the dealer plays (unless the dealer has an ace upcard or the player has blackjack)
6. Next player clockwise plays out their rounds
7. This continues until all players have played
8. Dealer plays (if necessary). If the dealer has a hand total of 17 or higher, they will automatically stand. Otherwise, they will hit
9. Dealer pays out if bust, or payouts occur if the dealer made a hand (which will be between 17 and 21 in value)

In each round there are **six** main ways a hand can be played out:

1. **Blackjack** or **natural** - If you’re dealt a ten-value card and an Ace as your first two cards you have blackjack. Usually you’re paid 3 to 2 (1.5 times your wager) immediately unless the dealer has a blackjack (in which case, it is a push; no loss or gain on the wager)
2. **Stand** - You accept the value of your hand and allow the dealer to move on
3. **Hit** - You are dealt one card for each hit in an attempt to increase the total value of your hand. This can continue until you either go bust or choose to stand
4. **Double Down** - If you want to hit but decide you have an advantageous hand, you can double your initial wager. However, you will not be allowed to hit again
5. **Split** - If you’re dealt a pair, you can make an additional wager and split your hand into two separate hands with two separate wagers. You will then be hit on both hands
6. **Surrender** - On your initial hand, you can give up for half of your wager back


## Advanced Rules
#### Insurance
If the dealer has an ace as an upcard, it is likely (almost ⅓ chance) that the dealer will have a blackjack. The player can ‘insure’ themselves against losing their original wager by placing a side-bet **up to half** their original wager, at a payout of 2 to 1 on the insurance. 

The dealer will take bets and then check their downcard without revealing it. If the dealer has a blackjack all players lose their original wager, but the insurance wagers pay back to them at the same value as their original so they break even. If the dealer doesn’t draw a blackjack, the players who paid insurance lose the side-bet and the game continues as normal.

However, if a player has a blackjack and the dealer’s upcard is an ace, you’ll be offered ‘even money’ which is **mathematically equivalent** to insurance. This is where you will be paid an amount equal to your original wager regardless of the outcome, instead of being potentially paid 3 to 2 or pushing (no loss or gain on wager).

#### Non-Insurable Dealer Blackjack
It is possible for the dealer to have a blackjack without offering insurance or even money. If the dealer is showing a ten up, they will check their hole card automatically, before anyone is allowed to play their hands. If there is an ace underneath, the dealer has a blackjack and all bets on the table will be taken except for any player blackjacks, which would just push. Insurance is only offered when the dealer is showing an ace. 

#### Dead Hand
If all players at the table bust before the dealer plays their hand, it’s considered a “dead hand”. The dealer will flip over their hole card and then sweep the cards up and put them in the discard tray. There is no reason to play the dealer’s hand and waste cards because the dealer has already beaten the player(s).

## Key Terminology
**Blackjack** - A player’s first two cards consisting of an ace and a 10-value card

**Bust** - When a hand exceeds a total value of 21

**Doubling After Splitting (DAS)** - A rule that allows a player to double down on a hand produced from a split

**Doubling Down** - After receiving the first two cards, a player has the option to make a secondary wager up to the original bet amount and receive only one additional draw card

**Down Card** - The dealer’s hole card or any card that is dealt face down

**Early Surrender** - A player is allowed to surrender his hand (forfeit half of the bet) before the dealer checks if they have a blackjack

**Even Money** - When a player has a blackjack and the dealer has an ace upcard, the dealer will offer the player an even-money payoff, before they peek at their down card, which is equivalent to the player taking insurance

**Face Card** - A Jack, Queen or King card

**Flat Bet** - Betting the same amount of money on successive hands

**Hard Hand** - A hand that either has no ace, or if an ace is present, it counts as one (rather than eleven)

**Heads Up** - Playing alone against a dealer

**Hit** - When a player requests another card or, when by the rules, the dealer must draw another card

**Hit 17 (H17)** - A rule requiring the dealer to hit all their totals of 17, including soft 17

**Hole Card** - The card in the dealer’s hand that is dealt face down

**Insurance** - A side bet that the dealer has a blackjack. Players may make the insurance bet (equal to a maximum of half of the original amount wagered on the hand) when the dealer’s upcard is an ace. If the dealer has a blackjack, the player gets double their bet

**Late Surrender** - A player is allowed to surrender their hand (forfeit half of the bet) after the dealer checks their downcard and confirms they do not have a blackjack

**Natural** - Another term for a blackjack

**Pair** - Two cards with identical numerical value (including face cards)

**Pair Splitting** - Option that allows a player to split the initial two-card hand containing a pair (such as two 8s) into two hands. The player must make a secondary wager equal to the initial wager when pair splitting

**Push** - A ﬁnal player’s hand with the same total as the dealer’s ﬁnal hand. This is a “tie,” so the chips you wagered on the hand stay where they are in the betting spot

**Resplits** - Allowing a player to split a pair, after an initial split, usually up to three or four hands

**Re-splitting Aces (RSA)** - A rule allowing a player to split a pair of aces, after an initial split of aces, usually up to three or four hands

**Soft 17 (S17)** - A rule requiring the dealer to stand on all their totals of 17, including soft 17 (to the player’s benefit)

**Soft Hand** - Any blackjack hand that contains an ace counted as 11

**Stand** - Decision made by a player not to receive any more cards (or the casino rule that requires the dealer not to draw any more cards to their hand)

**Surrender** - A rule that allows a player to give up their initial hand and forfeit half of their wager

**Upcard** - The card in the dealer’s initial two-card hand that is dealt face up
