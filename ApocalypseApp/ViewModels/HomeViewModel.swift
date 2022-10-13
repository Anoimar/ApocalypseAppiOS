//
//  HomeViewModel.swift
//  ApocalypseApp
//
//  Created by mariusz on 11/09/2022.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    private var marvelService: MarvelService
    @Published var comics = [Comic]()
    
    init() {
        self.marvelService = MarvelService()
        fetchResults()
    }
        
    func fetchResults() {
        self.marvelService.getApocalypseComics(completion: { results in
            if let results = results {
                let comics = results.map{ Comic(result: $0)}
                DispatchQueue.main.async {
                    self.comics = comics
                }
            }
        })

    }
    
}
