//
//  ContentView.swift
//  Day Journal
//
//  Created by Eduardo Rodrigues on 22.09.24.
//

import SwiftUI

struct JournalEntriesListView: View {
    
    let journalEntries: [JournalEntry] = [JournalEntry(title: "US Election"), JournalEntry(title: "X vs Brazil")]
    
    var body: some View {
        List(journalEntries) { listedJournalEntry in
            Text(listedJournalEntry.title)
        }
        
    }
}

#Preview {
    JournalEntriesListView()
}
