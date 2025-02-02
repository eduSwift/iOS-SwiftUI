//
//  LoginView.swift
//  WhatsUp
//
//  Created by Eduardo Rodrigues on 02.02.25.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    private var isFormValid: Bool {
        !email.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace
    }
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Sign Up")
                .font(.largeTitle)
                .bold()
                .padding()
            Form {
                TextField ("Email", text: $email)
                    .textInputAutocapitalization(.never)
                    .padding()
                
                SecureField ("Password", text: $password)
                    .textInputAutocapitalization(.never)
                    .padding()
                
                
            }
            Button("Sign Up") {
                Task {
                    
                }
            }.disabled(!isFormValid)
                
                .padding()
            
        }
        
    }
}

#Preview {
    SignUpView()
}
