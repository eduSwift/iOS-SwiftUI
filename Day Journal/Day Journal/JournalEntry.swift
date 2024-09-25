//
//  JournalEntry.swift
//  Day Journal
//
//  Created by Eduardo Rodrigues on 22.09.24.
//

import Foundation

class JournalEntry: Identifiable {
    var title: String = ""
    var text: String = ""
    var rating: Int = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Int, date: Date) {
        
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}

let journalEntries: [JournalEntry] = [
    JournalEntry(title: "Meditation", text: "I meditaded for more than 10 minutes", rating: 4, date: Date()),
    JournalEntry(title: "Learning SwiftUI", text: "I have learnt about arrays", rating: 5, date: Date.now.addingTimeInterval(-3 * 24 * 60 * 60)),
    JournalEntry(title: "Gym", text: "trained my legs", rating: 5, date: Date.now.addingTimeInterval(-7 * 24 * 60 * 60)),]
