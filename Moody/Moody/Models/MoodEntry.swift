//
//  MoodEntry.swift
//  Moody
//
//  Created by Eduardo Rodrigues on 17/12/24.
//

import Foundation
import SwiftData

@Model

class MoodEntry: Identifiable {
    var id = UUID()
    var gratitudeText: String
    var date: Date
    var mood: String
    
    
    init(mood: Mood, gratitudeText: String, date: Date = Date()) {
        self.mood = mood.rawValue
        self.gratitudeText = gratitudeText
        self.date = date
    }
}

enum Mood: String, CaseIterable {
    case happy = "Happy"
    case sad = "Sad"
    case angry = "Angry"
    case tired = "Tired"
    case love = "Love"
    case neutral = "Neutral"
    
    var emoji: String {
        switch self {
        case.happy: return "😊"
        case.sad: return "😔"
        case.angry: return "😡"
        case.tired: return "🥱"
        case.love: return "😍"
        case.neutral: return "😐"
        }
    }
}
