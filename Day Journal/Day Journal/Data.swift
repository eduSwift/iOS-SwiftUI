//
//  Data.swift
//  Day Journal
//
//  Created by Eduardo Rodrigues on 02.10.24.
//

import Foundation

import Foundation
import SwiftData


@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

@Model
final class Todo {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
