//
//  ContentView.swift
//  Jobs
//
//  Created by Eduardo Rodrigues on 15/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @AppStorage("username") 
    private var username: String = "Username"
    
    
    var body: some View {
        TabView {
            JobsView()
                .tabItem {
                    Label("Jobs", systemImage: "suitcase")
                }
           
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
            
            
            VStack {
                Text("Welcome, \(username)!")
                TextField("Username", text: $username)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
