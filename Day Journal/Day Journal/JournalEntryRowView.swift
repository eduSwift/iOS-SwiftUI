//
//  JournalEntryRowView.swift
//  Day Journal
//
//  Created by Eduardo Rodrigues on 24.09.24.
//

import SwiftUI

struct JournalEntryRowView: View {
    
    let journalRowEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text(journalRowEntry.title)
                    .bold()
                Text("-")
                Text(journalRowEntry.text)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 1)
            HStack {
                Text(journalRowEntry.date, style: .date)
                    .foregroundStyle(.secondary)
               
                Text(String(repeating: "⭐️", count: journalRowEntry.rating))
            }
            .font(.caption)
        }
    }
}

#Preview {
    List {
        JournalEntryRowView(journalRowEntry: JournalEntry(title: "Learning SwiftUI", text: "I have learnt about arrays", rating: 5, date: Date()))
    }
    
}
