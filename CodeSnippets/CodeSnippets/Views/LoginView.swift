//
//  LoginView.swift
//  CodeSnippets
//
//  Created by Eduardo Rodrigues on 01.02.25.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var userViewModel: UserViewModel
    
    var body: some View {
        NavigationStack {
            Form {
                Button(action: {
                    userViewModel.loginAnonymously()
                }) {
                    Text("Login as Guest")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding()
            }
            .navigationTitle("Login")
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
