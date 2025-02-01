//
//  UserViewModel.swift
//  CodeSnippets
//
//  Created by Eduardo Rodrigues on 01.02.25.
//

import Foundation
import Firebase
import FirebaseAuth

final class UserViewModel: ObservableObject {
    private var auth = Auth.auth()
    @Published var user: User?
    
    var isUserLoggedIn: Bool {
        user != nil
    }
    
    
    func loginAnonymously() {
        auth.signInAnonymously() { authResult, error in
            if let error {
                print("Login failed:", error)
                return
            }
            
            guard let authResult else { return }
            print("user is logged in with id '\(authResult.user.uid)'")
            self.user = authResult.user
        }
    }
}

