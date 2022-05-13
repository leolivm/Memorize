//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Leandro Martins on 13/05/22.
//  View Model

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["✈️", "🚞", "🚓", "🛥", "🍁", "👺", "🚬", "🐴", "👨🏻‍💻", "🌱", "🤛🏻"]
    
    static func CreateMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { index in
            EmojiMemoryGame.emojis[index]
        }
    }
    
    private var model: MemoryGame<String> = CreateMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
