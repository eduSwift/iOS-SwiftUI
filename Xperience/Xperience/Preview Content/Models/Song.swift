//
//  Song.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 05.12.24.
//

import Foundation


struct Song: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let album: Album
}

