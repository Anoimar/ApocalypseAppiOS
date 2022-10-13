//
//  Comic.swift
//  ApocalypseApp
//
//  Created by mariusz on 13/10/2022.
//

import Foundation

struct Comic: Identifiable {
    var id: Int
    var imageUrl: String
    var title: String
    
    init(result: MarvelResponse.Result) {
        id = result.id
        title = result.title
        imageUrl = "\(result.thumbnail?.path ?? "").\(result.thumbnail?.extension ?? "")"
    }
    
    init(id: Int, title: String, imageUrl: String) {
        self.id = id
        self.title = title
        self.imageUrl = imageUrl
    }
}
