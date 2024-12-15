//
//  SongRow.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 07.12.24.
//

import SwiftUI

struct SongRow: View {
    let song: Song
    
    var body: some View {
       HStack {
            Text(song.title)
               .padding()
            Text(song.album.title)
        }
       .listRowBackground(Color.orange.opacity(0.5))
    }
}

#Preview {
    SongRow(song: Song(title: "Song Title", album: Album(title: "Album Title", year: "2024")))
}
