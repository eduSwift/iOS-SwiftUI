//
//  EntryListView.swift
//  FoodTracker
//
//  Created by Eduardo Rodrigues on 04.12.24.
//

import SwiftUI

struct EntryListView: View {
    
    let entries: [Entry] = [
        Entry(title: "Pizza", date: .now, calories: 0),
        Entry(title: "Coke Zero", date: .now, calories: 0),
        Entry(title: "Chips", date: .now, calories: 0)
    ]
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}



#Preview {
    EntryListView()
}
