//
//  TestView.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 04.12.24.
//

import SwiftUI

struct TestView: View {
    @State private var tab: Int = 0
    
    var body: some View {
        TabView(selection: $tab) {
        
            Tab("Home", systemImage: "house", value: 0) {
                HomeView(tab: $tab)
            }
            .badge(3)
            Tab("Search", systemImage: "magnifyingglass", value: 1) {
                SearchView(tab: $tab)
            }
            Tab("Setting", systemImage: "gear", value: 2) {
                SettingsView(tab: $tab)
            }
        }
    }
}

struct HomeView: View {
    @Binding var tab: Int
    
    var body: some View {
        Button("Go to Search") {
            tab = 1
           
        }
    }
}


struct SearchView: View {
    @Binding var tab: Int
    
    var body: some View {
        Button("Go to Home") {
            tab = 0
            
        }
    }
}

struct SettingsView: View {
    @Binding var tab: Int
    
    var body: some View {
        Button("Go to Home") {
            tab = 0
            
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    TestView()
}
