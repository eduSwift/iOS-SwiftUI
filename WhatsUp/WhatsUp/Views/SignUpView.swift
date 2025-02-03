//
//  LoginView.swift
//  WhatsUp
//
//  Created by Eduardo Rodrigues on 02.02.25.
//

import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String = ""
    
    private var isFormValid: Bool {
        !email.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace
    }
    
    private func signUp() async {
        
        do {
            _ = try await Auth.auth().createUser(withEmail: email, password: password)
        } catch {
            errorMessage = error.localizedDescription
        }
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
                
                Text(errorMessage)
                
                
            }
            Button("Sign Up") {
                Task {
                    await signUp()
                }
            }.disabled(!isFormValid)
                
                .padding()
            
        }
        
    }
}

#Preview {
    SignUpView()
}
