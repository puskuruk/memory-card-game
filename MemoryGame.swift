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
    
    func choose(card: Card) -> Card{
//        print("Card choosen: \(card)")
        var card = card
        print("Card choosen: \(card) \(!card.isFaceUp)")
//        card.isFaceUp = !card.isFaceUp
        return card
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
