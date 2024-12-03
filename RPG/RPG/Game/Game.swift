//
//  Game.swift
//  RPG
//
//  Created by Eduardo Rodrigues on 08.11.24.
//

import Foundation


class Game {
    
    func greet() {
        print("What's your name?")
        let name = readLine()!
        print("\(name) Welcome to the Thundercats vs Mutants Fight!")
    }
    
    var gameState: GameState = .combat
    var round = 1
    
    while gameState = .gameOver && gameState = .quit {
        print("\n##### Round \(round) #####")
    }
    
    func displayActions() {
        print("[1] Choose Weapon ⚔️:")
        print("[2] Choose Item 💰:")
        print("[3] Quit Game 🚪:")
    }
    
}
