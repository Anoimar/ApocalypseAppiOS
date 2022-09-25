//
//  HomeViewModel.swift
//  ApocalypseApp
//
//  Created by mariusz on 11/09/2022.
//

import Foundation


class HomeViewModel: ObservableObject {
    
    private var marvelService: MarvelService
    @Published var results = [MarvelResponse.Result]()
    
    init() {
        self.marvelService = MarvelService()
        fetchResults()
    }
    
    let apiPrimaryKey: String = "9e83a1125c1601e6c450553863acfe1a"
    
    func fetchResults() {
        self.marvelService.getApocalypseComics(completion: { results in
            if let results = results {
                DispatchQueue.main.async {
                    self.results = results
                }
            }
        })

    }
    
}
