//
//  JournalEntry.swift
//  Day Journal
//
//  Created by Eduardo Rodrigues on 22.09.24.
//

import Foundation

class JournalEntry: Identifiable {
    var title: String = ""
    
    init(title: String) {
        self.title = title
    }
}
