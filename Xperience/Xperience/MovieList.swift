//
//  ContentView.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 02.12.24.
//

import SwiftUI
import SwiftData

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let color: Color
    let emoji: String
}

struct MovieRow: View {
    let movie: Movie
    
    var body: some View {
        HStack {
            Text(movie.emoji)
            Text(movie.title)
        }
        .listRowBackground(movie.color.opacity(0.3))
    }
}

struct MovieList: View {
  @State private var movies = [
        Movie(title: "Alien", color: .green, emoji: "👽"),
        Movie(title: "Blade Runner", color: .purple, emoji: "🌃"),
        Movie(title: "Gladiator", color: .red, emoji: "⚔️")
    ]
    
    var body: some View {
        List {
            Section {
                ForEach(movies) { movie in
                   MovieRow(movie: movie)
                        .swipeActions(edge: .leading) {
                        }
                }
                .onDelete { indices in
                    movies.remove(atOffsets: indices)
                }
            } header: {
                Label("SciFi", systemImage: "star")
                    .foregroundStyle(.blue)
                    .font(.headline)
            }
            Section("Drama") {
                Text("")
            }
        }
    }
}




#Preview {
    MovieList()
        .modelContainer(for: Item.self, inMemory: true)
}
