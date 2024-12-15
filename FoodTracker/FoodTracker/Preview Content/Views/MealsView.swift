//
//  MealsView.swift
//  FoodTracker
//
//  Created by Eduardo Rodrigues on 05.12.24.
//

import SwiftUI

struct MealsView: View {
    @Binding var entries: [Entry]
    @State private var selectedEntry: Entry?
    @State private var isMealsExpanded: Bool = true

    
    
    var body: some View {
        VStack(isExpanded: $isMealsExpanded) {
            ForEach(entries.filter { $0.category == "Meals"}) { entry in
                EntryRow(entry: entry)
            }
            
            .swipeActions {
                Button(role: .destructive) {
                    if let index = entries.firstIndex(where: { $0.id == entry.id }) {
                        entries.remove(at: index)
                    }
                } label: {
                    Label("Delete", systemImage: "trash")
                }
            }
            .onTapGesture {
                selectedEntry = entry
            }
        }
        .sheet(item: $selectedEntry) { entry in
            EntryListView(entry: $entries[entries.firstIndex(where: { $0.id == entry.id })!])
        } header: {
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundStyle(.green)
                Text("Meals")
                    .font(.headline)
                    .bold()
        }
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            
        }
    }
}

#Preview {
    MealsView(entries: .constant ([
        Entry(title: "Feijoada", date: .now, calories: 450, category: "Meals", description: "Delicious Brazilian dish")
    ]))
}
