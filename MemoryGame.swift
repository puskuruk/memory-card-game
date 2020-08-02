//
//  MemoryGame.swift
//  Memorize-2
//
//  Created by Tamay Eser Uysal on 2.08.2020.
//  Copyright © 2020 Tamay Eser Uysal. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card){
        print("Card choosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
