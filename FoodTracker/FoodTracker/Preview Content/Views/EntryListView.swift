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
        VStack {
            Image("Calories")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .ignoresSafeArea()

            
            HStack {
                
                Image(systemName: "15.arrow.trianglehead.counterclockwise.ar")
                    .font(.title)
            
                Text("FoodTracker")
                    .font(.largeTitle)
                    .bold()
            }
            .padding(.bottom, 5)
            List {
                ForEach(entries) { entry in
                    Text(entry.title)
                   
                }
                    
            }
        }
    }
}

#Preview {
    EntryListView()
}
