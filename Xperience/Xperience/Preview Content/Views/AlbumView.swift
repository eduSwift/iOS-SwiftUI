//
//  AlbumView.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 07.12.24.
//

import SwiftUI

struct AlbumView: View {
   let album: [Album] = [
    Album(title: "Pablo Honey", year: "1993"),
    Album(title: "The Bends", year: "1995"),
    Album(title: "OK Computer", year: "1997")
   ]
    
    var body: some View {
       List {
           ForEach(album) { album in
               AlbumRow(album: album)
           }
           
        }
    }
}

#Preview {
    AlbumView()
}
