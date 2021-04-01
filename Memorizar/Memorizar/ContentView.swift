//
//  ContentView.swift
//  Memorizar
//
//  Created by Santos on 15/02/21.
//  Copyright © 2021 CS193p TJ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModelCards: EmojiMemoryGame
    var body: some View {
        HStack {
            ForEach(viewModelCards.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModelCards.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModelCards: EmojiMemoryGame())
    }
}
