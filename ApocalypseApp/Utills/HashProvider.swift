//
//  HashProvider.swift
//  ApocalypseApp
//
//  Created by mariusz on 10/10/2022.
//

import Foundation
import CryptoKit

struct HashProvider {
    
    
    
    func createHash(time: String, apiKeyPublic: String) -> String {
        let apiKeyPrivate = Bundle.main.infoDictionary?["API_KEY"] as? String ?? ""
        return Insecure.MD5.hash(data: "\(time)\(apiKeyPrivate)\(apiKeyPublic)".data(using: .utf8)!).map { String(format: "%02hhx", $0) }.joined()
    }
}
