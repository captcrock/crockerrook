# Crocker Rook Card Game

A digital implementation of the classic Crocker Rook card game with enhanced features.

## New Features Added

After winning a bid, players now have four strategic options:

### 1. Normal Play - Call Trump
- The traditional option where the bidder calls the trump suit
- Play proceeds normally with trump rules

### 2. Partner Calls Trump
- The bidder's partner gets to choose the trump suit
- Useful when the partner has a stronger hand or better trump options
- Adds strategic depth to partnership play

### 3. Fold
- The bidder goes negative their bid amount
- Opponents receive 0 points for the round
- Strategic option when the hand is weaker than expected after seeing the nest
- Provides a controlled loss option

### 4. No Trump
- Play with no trump suit - high card wins
- Must still follow suit rules
- The Rook becomes a normal card (not special)
- Good option when you have strong cards across multiple suits

## How to Play

1. Open `index.html` in a web browser
2. Select difficulty level
3. Bid on hands to win the privilege of calling trump
4. After winning a bid, choose your post-bid option
5. Play tricks to score points
6. First team to reach the target score wins

## Game Rules

- Each player receives 10 cards
- 5 cards form the "nest" (widow)
- Minimum bid is 90 points
- Point values: Rook (20), Aces (15), 14s & 10s (10), 5s (5)
- Must follow suit if possible
- Trump cards beat non-trump cards
- In No Trump mode, only the lead suit can win tricks
