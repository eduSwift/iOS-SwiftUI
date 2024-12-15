
//  Settings.swift
//  TraumJobTests
//
//  Created by Eduardo Rodrigues on 14/12/24.
//

import SwiftUI
import SwiftData


struct Settings: View {
    
    @AppStorage("username") private var username: String = ""
    @AppStorage("emal") private var email: String = ""
    @AppStorage("bithdate") private var birthdate: Date = .now
    @AppStorage("location") private var location: String = ""
    @AppStorage("notifications") private var notifications: Bool = false
    @AppStorage("notificationAccepted") private var notificationAccepted: Bool = false
    @AppStorage("language") private var language: String = ""
    @AppStorage("darkmode") private var darkmode: Bool = false
    @AppStorage("fontSize") private var fontSize: Int = 0
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
                DatePicker("Birthdate", selection: $birthdate)
                TextField("Location", text: $location)
                Toggle(isOn: $notifications) {
                   Text("Notifications")
                }
                Picker("Type of notification", selection: $notificationAccepted) {
                    Text("Alert")
                    Text("Sheet")
                }
                Toggle(isOn: $darkmode) {
                    Text("Darkmode")
                }
                Picker("Language", selection: $language) {
                    Text("English")
                    Text("Portuguese")
                    Text("German")
                }
                Stepper("Font size", value: $fontSize, in: 0...100)
             
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    Settings()
}
