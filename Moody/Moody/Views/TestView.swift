//
//  TestView.swift
//  Moody
//
//  Created by Eduardo Rodrigues on 17/12/24.
//

import SwiftUI
import SwiftData

struct EntryView: View {
    @State private var customMoods: [Mood] = []
    @State private var saveError: String? = nil
    @State private var newGratitudeText = ""
    @State private var selectedMood: Mood = .happy
    @State private var newCustomMood: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var showAddMoodSheet = false
    @State private var navigateToTextFieldView = false // State for navigation
    @Binding var tab: Int
    @Environment(\.modelContext) private var context: ModelContext
    @Query(sort: \MoodEntry.date, order: .forward) var entries: [MoodEntry]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("What's Your Mood Today?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                List(Mood.allCases + customMoods, id: \.self) { mood in
                    HStack {
                        Text(mood.rawValue)
                            .font(.title2)
                            .padding()
                        Spacer()
                        Button(action: {
                            selectMood(mood)
                            navigateToTextFieldView = true // Trigger navigation
                        }) {
                            Text(mood.emoji)
                                .font(.largeTitle)
                                .padding()
                                .background(selectedMood == mood ? Color.blue.opacity(0.2) : Color.clear)
                                .cornerRadius(8)
                    
                            
                        }
                        .padding(.trailing)
                    }
                    .padding(.vertical, 4)
                }
                
                // Hidden NavigationLink for programmatic navigation
                NavigationLink(
                    destination: TextFieldView(selectedMood: .constant(selectedMood), tab: $tab),
                    isActive: $navigateToTextFieldView
                ) {
                    EmptyView()
                }
                .hidden()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showAddMoodSheet = true
                    }) {
                        Image(systemName: "plus")
                            .font(.title)
                    }
                }
            }
            .sheet(isPresented: $showAddMoodSheet) {
                VStack {
                    Text("Your current feeling ?")
                        .font(.title2)
                        .padding()
                    TextField("Enter your mood", text: $newCustomMood)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Button("Add Mood") {
                        addCustomMood()
                        showAddMoodSheet = false
                    }
                    .padding()
                    .disabled(newCustomMood.isEmpty)
                }
                .padding()
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
    
    private func selectMood(_ mood: Mood) {
        selectedMood = mood
    }
    
    private func addCustomMood() {
        guard !newCustomMood.isEmpty else {
            alertMessage = "Please enter a valid custom mood."
            showAlert = true
            return
        }
        customMoods.append(Mood(rawValue: newCustomMood) ?? .happy)
        newCustomMood = ""
    }
}

#Preview {
    EntryView(tab: .constant(0))
        .modelContainer(for: MoodEntry.self, inMemory: true)
}

