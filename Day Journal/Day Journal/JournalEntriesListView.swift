//
//  ContentView.swift
//  Day Journal
//
//  Created by Eduardo Rodrigues on 22.09.24.
//

import SwiftUI

struct JournalEntriesListView: View {
    
   
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: JournalEntryDetailView(detailJournalEntry: listedJournalEntry)) {
                    JournalEntryRowView(journalRowEntry: listedJournalEntry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries ")
        }
        
        
    }
    
}


#Preview {
    JournalEntriesListView()
}
