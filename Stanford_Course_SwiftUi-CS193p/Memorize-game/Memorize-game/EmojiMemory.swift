//
//  EmojiMemory.swift
//  Memorize-game
//
//  Created by Mohamed Salah on 21/03/2023.
//

import SwiftUI


class EmojiMemoryGame : ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    @Published private var model : MemoryGame<String> = createMemoryGame()
    
   private static let emojis: [String] =  [ "✈️" , "🪴" , "🐲" , "🐕"  , "🌵" , "🌳" , "🍄" , "🐚" , "🪵" , "🦫" , "🍰" , "🍫" , "🍙"  , "🏆" , "🏝️" , "🧲"  , "💎" , "❇️" , "🔞", ]
    
    private static func createMemoryGame()-> MemoryGame<String> {
        
        return MemoryGame<String>( numberOfPairsOfCard: 4 , createCardContent: { index in
           return  emojis[index]
        })
        
    }
    
    var cards : Array<Card> {

        return model.cards
        
    }
    
    func choose(_ card: Card){
        model.choose(card)
      
    }
}

struct Previews_EmojiMemory_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
