//
//  item.swift
//  Data Pratice
//
//  Created by Eduardo Rodrigues on 26.09.24.
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

@Model
final class Todo {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
