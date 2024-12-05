//
//  NaviView.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 04.12.24.
//

import SwiftUI


struct MusicView: View {
    @State private var path = NavigationPath()
    

    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Artists") {
                    ForEach(Artist.all) { artist in
                        NavigationLink(value: artist) {
                            Label(artist.name, systemImage: "music.mic")
                        }
                    }
                }
                Section("Songs") {
                    ForEach(Song.all) { song in
                        NavigationLink(value: song) {
                            Label(song.title, systemImage: "music.note")
                        }
                    }
                }
            }
            .navigationTitle("Music")
            .toolbar {
                Button("Play", systemImage: "play.fill") {
                    path.append(Song.all.randomElement()!)
                }
            }
            .navigationDestination(for: Artist.self) { artist in
                ArtistView(artist: artist)
            }
            .navigationDestination(for: Song.self) { song in
                SongView(path: $path, song: song)
                
                
            }
            
        }
    }
    
}

#Preview {
    MusicView()
}



