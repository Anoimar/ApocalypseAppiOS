//
//  ContentView.swift
//  ApocalypseApp
//
//  Created by mariusz on 11/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var homeVM: HomeViewModel
    
    init() {
        self.homeVM = HomeViewModel()
    }
    
    var body: some View {
        
        List {
            ForEach(homeVM.results) { result in
                Text(result.title)
                    .padding()
            }
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
