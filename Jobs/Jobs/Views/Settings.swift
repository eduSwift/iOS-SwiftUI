//
//  Settings.swift
//  Jobs
//
//  Created by Eduardo Rodrigues on 15/12/24.
//

import SwiftUI
import SwiftData

struct Settings: View {
    @AppStorage("Username") private var username: String = ""
    @AppStorage("Email") private var email: String = ""
    @AppStorage("Date of birht") private var dateOfBirth: Date = Date()
    @AppStorage("Location") private var location: String = ""
    @AppStorage("Notifications") private var notifications: Bool = false
    @AppStorage("Notifications Accepted") private var notificationsAccepted: Bool = false
    @AppStorage("Language") private var language: String = ""
    @AppStorage("Darkmode") private var darkmode: Bool = false
    @AppStorage("Font size") private var fontSize: Int = 0
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
                DatePicker("Date of bith", selection: $dateOfBirth)
                TextField("Location", text: $location)
                Toggle(isOn: $notifications) {
                    Text("Notifications")
                }
                Picker("Notification type", selection: $notificationsAccepted) {
                    Text("Alet")
                    Text("Sheet")
                }
                Picker("Language", selection: $language) {
                    Text("English")
                    Text("German")
                    Text("Portuguese")
                }
                Toggle(isOn: $darkmode) {
                    Text("Darkmode")
                }
                Stepper("Font size", value: $fontSize)
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    Settings()
}
