//
//  MarvelResponse.swift
//  ApocalypseApp
//
//  Created by mariusz on 25/09/2022.
//

import Foundation

struct MarvelResponse: Decodable {
    
    let data: DataClass
    
    struct DataClass: Decodable {
        let offset, limit, total, count: Int
        let results: [Result]
    }
    
    struct Result: Decodable, Identifiable {
        let id: Int
        let title: String
        let issueNumber: Int
        let variantDescription: String
        let resultDescription: String?
        let modified, isbn, upc, diamondCode: String
        let ean: String
        let issn: String
        let format: String
        let pageCount: Int
        let textObjects: [TextObject]
        let resourceURI: String
        let urls: [URLElement]
        let series: Item
        let variants: [Item]
        let dates: [DateElement]
        let prices: [Price]
        let thumbnail: Thumbnail?
        let images: [Thumbnail]
        let creators: Creators
        let characters: Characters
        let stories: Stories
        let events: Characters
    }
    
    struct Characters: Decodable {
        let available: Int
        let collectionURI: String
        let items: [Item]
        let returned: Int
    }
    
    struct ResultItem: Decodable {
        let available: Int
        let collectionURI: String
        let items: [Item]
        let returned: Int
    }

    struct Creators: Decodable {
        let available: Int
        let collectionURI: String
        let items: [Item]
        let returned: Int
    }

    struct Item: Decodable {
        let resourceURI: String
        let name: String
        let role: String?
        let type: String?

    }

    struct Thumbnail: Decodable {
        let path: String
        let thumbnailExtension: String?
    }
    
    struct Price: Decodable {
        let type: String
        let price: Double
    }
    
    struct Stories: Decodable {
        let available: Int
        let collectionURI: String
        let items: [Item]
        let returned: Int
    }
    
    struct TextObject: Decodable {
        let type, language, text: String
    }

    struct URLElement: Decodable {
        let type: String
        let url: String
    }
    
    struct DateElement: Decodable {
        let type: String
        let date: String
    }

}
