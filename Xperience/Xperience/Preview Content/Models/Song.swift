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
    
    
   static let all = [
        Song(title: "Paranoid Android"),
        Song(title: "From the stars"),
        Song(title: "Is it any wonder")
    ]
}

