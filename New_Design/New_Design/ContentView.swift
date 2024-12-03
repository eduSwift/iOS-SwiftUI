//
//  ContentView.swift
//  New_Design
//
//  Created by Eduardo Rodrigues on 17.11.24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
            VStack {
                Image(.CV)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 200))
                    .padding()
                Text("Eduardo Rodrigues")
                    .font(.largeTitle).bold()
                    .padding()
                
                HStack {
                    Text("iOS Developer")
                        .font(.title)
                        .padding()
                    Spacer()
                }
                
            }
            
            
            
            
        }
        
        
    }


#Preview {
    ContentView()
    
}


/*Text("Tap me")
    .font(.largeTitle).bold()
    .padding()
    .background(Color.green)
    .foregroundStyle(.black)
    .clipShape(RoundedRectangle(cornerRadius: 30))*/
