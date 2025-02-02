//
//  CodeSnippetsApp.swift
//  CodeSnippets
//
//  Created by Eduardo Rodrigues on 01.02.25.
//


import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct CodeSnippetsApp: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
  @StateObject private var userViewModel = UserViewModel()

  var body: some Scene {
    WindowGroup {
        if userViewModel.isUserLoggedIn {
            ContentView()
                .environmentObject(userViewModel)
        } else {
            LoginView()
                .environmentObject(userViewModel)
        }
        
      }
    }

}
