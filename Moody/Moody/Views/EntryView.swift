//
//  EntryView.swift
//  Moody
//
//  Created by Eduardo Rodrigues on 17/12/24.
//

/*import SwiftUI
import SwiftData

struct EntryView: View {
    @State private var customMoods: [Mood] = []
    @State private var selectedMood: Mood = .happy
    @State private var navigateToTextField: Bool = false // State to control navigation
    
    @Environment(\.modelContext) private var context: ModelContext
    @Query(sort: \MoodEntry.date, order: .forward) var entries: [MoodEntry]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("What's your Mood today?")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                List(Mood.allCases + customMoods, id: \.self) { mood in
                    MoodRow(mood: mood, selectedMood: $selectedMood) {
                        navigateToTextField = true // Trigger navigation
                    }
                }
                .navigationDestination(isPresented: $navigateToTextField) {
                    TextFieldView(selectedInput: selectedMood) // Pass selected mood
                }
            }
        }
    }
}

struct MoodRow: View {
    let mood: Mood
    @Binding var selectedMood: Mood
    var onMoodSelected: () -> Void // Callback for selection
    
    var body: some View {
        HStack {
            Text(mood.rawValue)
                .font(.title2)
                .padding()
            Spacer()
            Button(action: {
                selectedMood = mood
                onMoodSelected() // Notify parent of selection
            }) {
                Text(mood.emoji)
                    .font(.largeTitle)
                    .padding(8)
                    .background(selectedMood == mood ? Color.blue.opacity(0.2) : Color.clear)
                    .cornerRadius(8)
            }
        }
    }
}


#Preview {
    EntryView()
        .modelContainer(for: MoodEntry.self, inMemory: true)
}*/
