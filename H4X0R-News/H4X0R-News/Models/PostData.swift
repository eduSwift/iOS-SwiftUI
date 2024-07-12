//
//  PostData.swift
//  H4X0R-News
//
//  Created by Eduardo Rodrigues on 11.07.24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
