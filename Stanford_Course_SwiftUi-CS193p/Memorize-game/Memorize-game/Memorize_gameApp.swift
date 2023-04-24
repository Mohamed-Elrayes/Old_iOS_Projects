//
//  Memorize_gameApp.swift
//  Memorize-game
//
//  Created by Mohamed Salah on 15/03/2023.
//

import SwiftUI

@main
struct Memorize_gameApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
