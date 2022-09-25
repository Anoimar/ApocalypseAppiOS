//
//  MarvelService.swift
//  ApocalypseApp
//
//  Created by mariusz on 11/09/2022.
//

import Foundation
import SwiftUI


class MarvelService {
    
    let apiKeyPublic = "your public key"

    func getApocalypseComics(completion: @escaping ([MarvelResponse.Result]?) -> ()) {
        let timestamp = String(format: "%f", NSDate().timeIntervalSince1970)
        let hash =  "\(HashProvider().createHash(time: timestamp,apiKeyPublic: apiKeyPublic))"
        let apocalypseCharId = "1009156"
        guard let url = URL(string:  "http://gateway.marvel.com/v1/public/comics?ts=\(timestamp)&apikey=\(apiKeyPublic)&hash=\(hash)&characters=\(apocalypseCharId)")
        else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url){ data, response,error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let marvelResponse = try? JSONDecoder().decode(MarvelResponse.self, from: data)
            if let marvelResponse = marvelResponse {
                let results = marvelResponse.data.results
                completion(results)
            } else {
                completion(nil)
            }
        }.resume()
    }
}
