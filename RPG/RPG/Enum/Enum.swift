//
//  Enum.swift
//  RPG
//
//  Created by Eduardo Rodrigues on 08.11.24.
//

import Foundation


enum CharacterState {
    case healthy
    case wounded
    case knockedOut
}

enum GameState {
    case combat
    case gameOver
    case quit
}
