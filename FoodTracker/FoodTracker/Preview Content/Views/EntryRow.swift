//
//  EntryRowView.swift
//  FoodTracker
//
//  Created by Eduardo Rodrigues on 05.12.24.
//

import SwiftUI

struct EntryRow: View {
    let entry: Entry
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(entry.title)
                    .font(.headline)
                    .padding(.bottom, 2)
        
                Text(entry.date.formatted(.dateTime))
                    .font(.caption)
                    .foregroundStyle(Color.gray)
               
            }
            Spacer()
            Text("\(entry.calories) cal")
                .font(.subheadline)
                .padding(8)
                .background(Color.yellow.opacity(0.3))
                .cornerRadius(8)
            
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    EntryRow(entry: Entry(title: "Entry Title", date: Date(), calories: 100, category: "", description: ""))
    
}
