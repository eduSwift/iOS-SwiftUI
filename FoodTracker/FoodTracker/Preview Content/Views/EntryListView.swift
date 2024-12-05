//
//  EntryListView.swift
//  FoodTracker
//
//  Created by Eduardo Rodrigues on 04.12.24.
//

import SwiftUI

struct EntryListView: View {
    @State private var showAlert = false
    @State private var isAddingEntry = false
    @State private var showSheet = false
    @State private  var entryTitle = ""
    @State private  var entryCalories = ""
    @State private var  entryCategory = ""
    @State private var entryDescription = ""
    @State private var isPresented: Bool = false
    
    
    
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
            
            HStack {
                Button(action: {
                    showAlert = true
                }) {
                    Label("Delete All", systemImage: "trash")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding(6)
                        .background(.red)
                        .cornerRadius(8)
                }
                .alert("Confirm Deletion", isPresented: $showAlert) {
                    Button("Cancel", role: .cancel) {}
                    Button("Delete", role: .destructive) {
                        entries.removeAll()
                    }
                } message: {
                    Text("Are you sure you want to delete all entries?")
                }
                .padding()
                
                Button(action: {
                    isAddingEntry = true
                    showSheet = true
                }) {
                    Label("Add Entry", systemImage: "plus")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding(6)
                        .background(.blue)
                        .cornerRadius(8)
                }
                .sheet(isPresented: $showSheet) {
                    
                    NavigationView {
                        Form {
                            Section(header: Text("Entry Details")) {
                                TextField("Title:", text: $entryTitle)
                                TextField("Calories:", text: $entryCalories)
                                Picker("Category:", selection: $entryCategory) {
                                    Text("Meals").tag("Meals")
                                    Text("Drinks").tag("Drinks")
                                    Text("Snacks").tag("Snacks")
                                }
                                .pickerStyle(SegmentedPickerStyle())
                                TextField("Description", text: $entryDescription)
                            }
                            
                            Button("Save") {
                                saveEntry()
                                isPresented = false
                            }
                            .foregroundStyle(.white)
                            .padding(9)
                            .background(.green)
                            .cornerRadius(8)
                        }
                        .font(.headline)
                        .padding()
                        .background(.red)
                        .cornerRadius(8)
                    }
                    .navigationTitle("New Entry")
                    .navigationBarItems(leading: Button("Cancel") {
                        
                    })
                }
            }
            
        }
        .padding()
        
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
    
    
    private func saveEntry() {
        guard let calories = Int(entryCalories), !entryTitle.isEmpty else {
           
                return
            }
        let newEntry = Entry(title: entryTitle, date: .now, calories: calories)
           entries.append(newEntry)
           
           entryTitle = ""
           entryCalories = ""
           entryCategory = ""
           entryDescription = ""
    }
    
}



#Preview {
    EntryListView()
}
