//
//  Item.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 02.12.24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
