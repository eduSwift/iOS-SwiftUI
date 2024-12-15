//
//  Entry.swift
//  FoodTracker
//
//  Created by Eduardo Rodrigues on 04.12.24.
//

import Foundation


struct Entry: Identifiable {
    let id = UUID()
    var title: String
    var date: Date
    var calories: Int
    var category: String
    var description: String?
}
