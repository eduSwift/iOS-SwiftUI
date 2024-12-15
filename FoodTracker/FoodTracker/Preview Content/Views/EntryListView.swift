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
    @State private var selectedEntry: Entry? = nil
    
    
    
    @State private var entries: [Entry] = [
        Entry(title: "Pizza", date: .now, calories: 0, category: "Meals", description: ""),
        Entry(title: "Coke Zero", date: .now, calories: 0, category: "Drinks",description: ""),
        Entry(title: "Chips", date: .now, calories: 0, category: "Snacks", description: "")
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
                
                
                Button(action: {
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
                        List(entries) { entry in
                            Button(action: {
                                selectedEntry = entry
                                isPresented.toggle()
                            }) {
                            }
                            HStack {
                                Text(entry.title)
                                Spacer()
                                Text("\(entry.calories) kcal")
                            }
                            
                        }
                    }
                    .navigationTitle("My Entries")
                    .sheet(isPresented: $isPresented) {
                        if let entry = selectedEntry {
                            VStack {
                                Text("Title: \(entry.title)")
                                    .font(.headline)
                                Text("Calories: \(entry.calories) kcal")
                                    .font(.subheadline)
                            }
                            .padding()
                        }
                    }
                    
                }
                
            }
            
        }
        
    }
}

#Preview {
    EntryListView()
}
