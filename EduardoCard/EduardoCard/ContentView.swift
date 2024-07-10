//
//  ContentView.swift
//  EduardoCard
//
//  Created by Eduardo Rodrigues on 10.07.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Eduardo")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 170.0, height: 170.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Eduardo Swift")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+49 157 5848 0554", imageName: "phone.fill")
                InfoView(text: "eduswift@yahoo.com", imageName: "envelope.fill")
            }
        }
    }
}
#Preview {
    ContentView()
}

