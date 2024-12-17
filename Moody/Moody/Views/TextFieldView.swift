//
//  TextFieldView.swift
//  Moody
//
//  Created by Eduardo Rodrigues on 17/12/24.
//

import SwiftUI
import SwiftData

struct TextFieldView: View {
    @Environment(\.modelContext) private var context: ModelContext
    @Query(sort: \MoodEntry.date, order: .forward) private var entries: [MoodEntry]
    
    
    var selectedInput: Mood // Input for the selected mood
    @State private var newNote: String = ""
    
    var body: some View {
        VStack {
            Text("Write how do you feel right now")
                .font(.largeTitle)
                .padding()
            TextField("Enter text", text: $newNote)
                .padding()
            
            
            Text("Selected Mood: \(selectedInput.rawValue) \(selectedInput.emoji)")
                .font(.title2)
                .padding()
        }
    }
}

#Preview {
    TextFieldView(selectedInput: .happy)
}
