//
//  ContentView.swift
//  H4X0R-News
//
//  Created by Eduardo Rodrigues on 11.07.24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject  var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                        
                    }
                    
                    
                }
                
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
    
}





//let posts = [
//Post(id: "1", title: "Hello"),
//Post(id: "2", title: "Hallo"),
//Post(id: "3", title: "Oi")
//]









#Preview {
    ContentView()
}
