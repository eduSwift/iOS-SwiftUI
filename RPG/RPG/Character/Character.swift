//
//  Character.swift
//  RPG
//
//  Created by Eduardo Rodrigues on 13.11.24.
//

import Foundation

class Character {
    var name: String
    var hp: Int
    var maxHp: Int
    var attackPower: Int
    var state: CharacterState
    
    init(name: String, hp: Int, maxHp: Int, attackPower: Int) {
        self.name = name
        self.hp = hp
        self.maxHp = maxHp
        self.attackPower = attackPower
        self.state = .healthy
    }
    
    
    func attack(target: Character) {
        print("\(name) attacks \(target.name) with power \(attackPower)")
        target.hp -= attackPower
    }
}
