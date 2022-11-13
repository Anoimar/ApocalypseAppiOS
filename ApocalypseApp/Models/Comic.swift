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
    var description: String?
    var creators: [MarvelResponse.Item]
    
    init(result: MarvelResponse.Result) {
        id = result.id
        title = result.title
        imageUrl = "\(result.thumbnail?.path ?? "").\(result.thumbnail?.extension ?? "")"
        creators = result.creators.items
        description = result.resultDescription
    }
    
    init(id: Int, title: String, imageUrl: String, creators: [MarvelResponse.Item]) {
        self.id = id
        self.title = title
        self.imageUrl = imageUrl
        self.creators = creators
    }
}
