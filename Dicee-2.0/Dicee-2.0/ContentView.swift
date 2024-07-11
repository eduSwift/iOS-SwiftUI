//
//  ContentView.swift
//  Dicee-2.0
//
//  Created by Eduardo Rodrigues on 11.07.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                Image("dice1")
                    .resizable()
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
