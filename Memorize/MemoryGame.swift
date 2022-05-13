//
//  MemoryGame.swift
//  Memorize
//
//  Created by Leandro Martins on 13/05/22.
//  Model

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]
    
    func ChooseCard(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = [Card]()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
