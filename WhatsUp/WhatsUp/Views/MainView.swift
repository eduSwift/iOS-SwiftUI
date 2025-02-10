//
//  MainView.swift
//  WhatsUp
//
//  Created by Eduardo Rodrigues on 05.02.25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(hex: "#0097B2"),
                    Color(hex: "#7ed957")
                ]),
                startPoint: .leading,
                endPoint: .trailing
            )
            .ignoresSafeArea()
            
            Text("Main View")
            .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    MainView()
}
