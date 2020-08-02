 //
//  EmojiMemoryGame.swift
//  Memorize-2
//
//  Created by Tamay Eser Uysal on 2.08.2020.
//  Copyright © 2020 Tamay Eser Uysal. All rights reserved.
//

import SwiftUI
  
 class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🎃", "👻", "🤖"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK = Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK = Intents
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
 }
