//
//  ContentView.swift
//  CapFun
//
//  Created by Eduardo Rodrigues on 18.09.24.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = "Hello"
    
    var body: some View {
        VStack {
            Text(userText)
                .font(.largeTitle)
                .foregroundStyle(.red)
            
        TextField("Enter text here :)", text:  $userText)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
