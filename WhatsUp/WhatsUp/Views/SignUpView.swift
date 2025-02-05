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
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(.black),
                    Color(.gray).opacity(0.3)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Sign Up")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                
                TextField ("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.white)
                    .background(Color.white.opacity(0.1))
                    .textInputAutocapitalization(.never)
                    .padding(.horizontal)
                
                SecureField ("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .background(Color.white.opacity(0.1))
                    .textInputAutocapitalization(.never)
                    .padding(.horizontal)
                
                Text(errorMessage)
                
                
            }
            /*Button("Sign Up")
             .frame(maxWidth: .infinity)
             .padding()
             .background(Color.black)
             .foregroundColor(.white)
             .cornerRadius(10)
             
             Task {
             await signUp()
             }
             }.disabled(!isFormValid)
             
             .padding()*/
            
        }
        
    }
    
}

#Preview {
    SignUpView()
}
