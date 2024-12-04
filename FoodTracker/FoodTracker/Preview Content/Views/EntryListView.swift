//
//  EntryListView.swift
//  FoodTracker
//
//  Created by Eduardo Rodrigues on 04.12.24.
//

import SwiftUI

struct EntryListView: View {
    
    @State private var entries: [Entry] = [
        Entry(title: "Pizza", date: .now, calories: 0),
        Entry(title: "Coke Zero", date: .now, calories: 0),
        Entry(title: "Chips", date: .now, calories: 0)
    ]
    
    let meals: [Entry] = [
        Entry(title: "Pasta", date: .now, calories: 200),
        Entry(title: "Beef Steak", date: .now, calories: 180)
    ]
    
    let drinks: [Entry] = [
        Entry(title: "Club Mate", date: .now, calories: 120),
        Entry(title: "Beer", date: .now, calories: 270)
    ]
    
    let snacks: [Entry] = [
        Entry(title: "Haribo", date: .now, calories: 340),
        Entry(title: "Cookies", date: .now, calories: 530)
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
                    .backgroundStyle(.green)
            }
            .padding(.bottom, 5)
            
            List {
                Section("Meals") {
                    ForEach(meals) { meal in
                        Text(meal.title)
                    }
                }
                
                Section("Drinks") {
                    ForEach(drinks) { drink in
                        Text(drink.title)
                    }
                }
                
                Section("Snacks") {
                    ForEach(snacks) { snack in
                        Text(snack.title)
                    }
                }
                
                ForEach(entries) { entry in
                    Text(entry.title)
                }
                
                .onDelete { offset in
                    entries.remove(atOffsets: offset)
                }
                }
            }
        }
    }


#Preview {
    EntryListView()
}
