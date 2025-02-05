//
//  LoginView.swift
//  WhatsUp
//
//  Created by Eduardo Rodrigues on 03.02.25.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    private var isFormValid: Bool {
        !email.isEmptyOrWhiteSpace && !password.isEmptyOrWhiteSpace
    }
    
    
    private func login() async {
        
        do {
            _ = try await Auth.auth().signIn(withEmail: email, password: password)
        } catch {
            print(error.localizedDescription)
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
                Text("Login")
                    .font(.custom("SpaceGrotesk-Bold", size: 36))
                    .foregroundColor(.white).bold()
                
                VStack(spacing: 15) {
                    CustomTextField(icon: "envelope", placeholder: "Email", text: $email)
                    CustomSecureField(icon: "lock", placeholder: "Password", text: $password)
                }
                
                Button(action: {
                    Task {
                        await login()
                    }
                }) {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .font(.custom("SpaceGrotesk-Bold", size: 18))
                        .cornerRadius(12)
                
                }
                .padding(.horizontal)
            }
        }
    
    }
}

struct CustomTextField: View {
    var icon: String
    var placeholder: String
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
                .background(Color.black.opacity(0.2))
                .cornerRadius(10)
            
            TextField(placeholder, text: $text)
                .foregroundColor(.white)
                .autocapitalization(.none)
                .padding()
                .background(Color.white.opacity(0.1))
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

struct CustomSecureField: View {
    var icon: String
    var placeholder: String
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
                .background(Color.black.opacity(0.2))
                .cornerRadius(10)

            SecureField(placeholder, text: $text)
                .foregroundColor(.white)
                .padding()
                .background(Color.white.opacity(0.1))
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}



#Preview {
    LoginView()
}
