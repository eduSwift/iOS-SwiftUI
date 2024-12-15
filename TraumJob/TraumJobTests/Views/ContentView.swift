//
//  ContentView.swift
//  TraumJob
//
//  Created by Eduardo Rodrigues on 14/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @AppStorage("username") private var username: String = ""
    
    var body: some View {
        VStack {
            Text("Hello \(username)")
            TextField("Enter your user name", text: $username)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
