//
//  WhatsUpApp.swift
//  WhatsUp
//
//  Created by Eduardo Rodrigues on 02.02.25.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct WhatsUpApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            if Auth.auth().currentUser != nil {
                MainView()
            } else {
                LoginView()
            }
        }
    }
}
