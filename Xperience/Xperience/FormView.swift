//
//  FormView.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 03.12.24.
//

import SwiftUI

struct FormView: View {
    @State private var showingLogin = false
    
    @State private var username = ""
    @State private var password = ""
    @State private var keepLoggedIn =  false
    
    var body: some View {
        Button("Login") {
            showingLogin = true
        }
        .sheet(isPresented: $showingLogin) {
            Form {
                Section {
                    TextField("Username", text: $username)
                    SecureField("Password", text: $password)
                    Toggle("Keep logged in", isOn: $keepLoggedIn)
                }
                Section {
                    Button("Register") {
                        print("\(username), Passwor: \(password), keepLoggedIn \(keepLoggedIn)")
                        showingLogin = false
                    }
                }
            }
            
        }
    }
}

#Preview {
    FormView()
}
