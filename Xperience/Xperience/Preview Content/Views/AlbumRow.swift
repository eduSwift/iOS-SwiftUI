//
//  AlbumRow.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 07.12.24.
//

import SwiftUI

struct AlbumRow: View {
    let album: Album
    
    var body: some View {
        HStack {
            Text(album.title)
                .padding()
            Text(album.year)
        }
        .listRowBackground(Color.blue.opacity(0.1))
    }
}

#Preview {
    AlbumRow(album: Album.init(title: "The Bends", year: "1995"))
}
