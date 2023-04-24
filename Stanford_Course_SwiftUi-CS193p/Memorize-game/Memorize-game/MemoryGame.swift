//
//  MemoryGame.swift
//  Memorize-game
//
//  Created by Mohamed Salah on 21/03/2023.
//

import Foundation

struct MemoryGame<CardContent> where CardContent:Equatable {
    
   private(set) var cards: [Card]
   private var indexOfTheOneAndOlyFaceUpCard : Int?
       
   mutating func choose(_ card: Card) {
       
       if let chosenIndex = cards.firstIndex(where: { $0.id == card.id })  ,
          !cards[chosenIndex].isFaceUp,
          !cards[chosenIndex].isMatched
       {
           if let potentialMatchIndex = indexOfTheOneAndOlyFaceUpCard{
               if cards[chosenIndex].content == cards[potentialMatchIndex].content{
                   cards[chosenIndex].isMatched = true
                   cards[potentialMatchIndex].isMatched = true
               }
               indexOfTheOneAndOlyFaceUpCard = nil
           }else{
               for index in cards.indices{
                   cards[index].isFaceUp = false
               }
               indexOfTheOneAndOlyFaceUpCard = chosenIndex
           }
           cards[chosenIndex].isFaceUp.toggle()
           
           print("\(cards)")
       }
       
    }
    
    
  
    init(numberOfPairsOfCard: Int, createCardContent: (Int) -> CardContent) {
        
        cards = [Card]()
        
        for pairIndex in 0 ..< numberOfPairsOfCard {
            
            let content = createCardContent(pairIndex)
            
            cards.append(Card(content: content, id: pairIndex*2))
            
            cards.append(Card(content: content, id: pairIndex*2 + 1))
        }
    }
    
    struct Card: Identifiable {
        
        var isFaceUp = false
        
        var isMatched = false
        
        var content: CardContent
        
        var id: Int
    }
}
