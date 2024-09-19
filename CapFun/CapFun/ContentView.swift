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
            
            TextField("Enter your name", text: $userText)
                .padding()
            
            HStack {
                CustomButtonView(title: "ALL CAPS", color: .red)
                CustomButtonView(title: "First Letter", color: .green)
                CustomButtonView(title: "lowercase", color: .blue)
            }
            .padding()
        }
    }
}
    
#Preview {
    ContentView()
}
