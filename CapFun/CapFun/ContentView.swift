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
                Text("ALL CAPS")
                    .padding()
                    .font(.largeTitle)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Text("First Letter")
                    .padding()
                    .font(.largeTitle)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Text("lowercase")
                    .padding()
                    .font(.largeTitle)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
            }
        }
    }
}
    
#Preview {
    ContentView()
}
