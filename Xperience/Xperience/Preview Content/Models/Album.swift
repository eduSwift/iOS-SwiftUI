//
//  Album.swift
//  Xperience
//
//  Created by Eduardo Rodrigues on 07.12.24.
//

import Foundation

struct Album : Identifiable, Hashable {
    var id = UUID()
    var title: String
    var year: String

}
