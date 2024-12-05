//
//  ArtistView.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 05.12.24.
//

import SwiftUI

struct ArtistView: View {
    let artist: Artist
    
    var body: some View {
        Text("Artist").font(.body.bold())
        Text(artist.name)
    }
}


