//
//  EmojiMemoryGame.swift
//  Memorizar
//
//  Created by Thiago Jorge dos Santos on 31/03/21.
//  Copyright © 2021 CS193p TJ. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var modelMemoryGame: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
   static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃","🕷"]
    return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
        
    }
    
    //MARK: - Acess to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        modelMemoryGame.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        modelMemoryGame.choose(card: card)
    }
}
