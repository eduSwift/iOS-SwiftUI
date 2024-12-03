//
//  WeaponAttacker.swift
//  RPG
//
//  Created by Eduardo Rodrigues on 08.11.24.
//

import Foundation


protocol WeaponAttacker {
    var weaponDamage: Int {get set}
    var weaponDurability: Int {get set}
    func performWeaponAttack(target: Character)
}
