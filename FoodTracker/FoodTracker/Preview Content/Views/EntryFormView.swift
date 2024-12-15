//
//  EntryFormView.swift
//  FoodTracker
//
//  Created by Eduardo Rodrigues on 05.12.24.
//

import SwiftUI

struct EntryFormView: View {
    @Binding var entryTitle: String
    @Binding var entryCalories: String
    @Binding var entryCategory: String
    @Binding var entryDescription: String
    @Binding var isPresented: Bool
    
    
    var body: some View {
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
            isPresented = false
        })
    }
    
    
    private func saveEntry() {
        guard let calories = Int(entryCalories), !entryTitle.isEmpty else {
            
            return
        }
        
        //let newEntry = Entry(title: entryTitle, date: .now, calories: calories, category: category)

        
        entryTitle = ""
        entryCalories = ""
        entryCategory = ""
        entryDescription = ""
    }
}

#Preview {
    EntryFormView(entryTitle: .constant(""), entryCalories: .constant(""), entryCategory: .constant(""), entryDescription: .constant(""), isPresented: .constant(false))
}
