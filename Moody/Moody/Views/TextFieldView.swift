//
//  TextFieldView.swift
//  Moody
//
//  Created by Eduardo Rodrigues on 17/12/24.
//

import SwiftUI
import SwiftData

struct TextFieldView: View {
    @Binding  var selectedMood :Mood
    @State private var newNote: String = ""
    @Environment(\.modelContext) private var context
    @Query var mood: [MoodEntry]
    @Query var gratitudeText: [MoodEntry]
    @Binding var tab : Int
    var body: some View {
        NavigationStack {
            ZStack{
                VStack{
                    
                    Text(selectedMood.emoji)
                        .font(.system(size:120))
                    
                    Text(selectedMood.rawValue)
                        .font(.system(size:32))
                    
                    Spacer()
                    Text("Write down for which reason you are \(selectedMood)")
                    TextEditor(text:$newNote)
                        .frame(width:350,height:150)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth:2)
                            
                                .foregroundColor(.white)
                        )
                        .padding()
                    
                    Button(action:{
                        
                        addnewNote(newNote: newNote)
                        tab = 1
                    })
                    {
                        Label("New Note", systemImage: "pencil")
                        
                    }
                    .frame(width: 120,height: 30)
                    .background(Color.gray)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
                    .padding()
                    Spacer()
                }

            }
        }
    }
    private func addnewNote(newNote: String) {
        let newMoodEntry = MoodEntry(mood: selectedMood, gratitudeText: newNote, date: Date())
        context.insert(newMoodEntry)
        do{
            try context.save()
        }
        catch{
            print("Failed to save context: \(error.localizedDescription)")
        }
    }
}

#Preview {
   // TextFieldView().modelContainer(for: [MoodEntry.self], inMemory: true)
    TextFieldView(selectedMood: .constant(Mood.happy), tab: .constant(0))
        .modelContainer(for:MoodEntry.self,inMemory: true)
}
