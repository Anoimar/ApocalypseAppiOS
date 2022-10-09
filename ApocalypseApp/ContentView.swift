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
        VStack() {
            ScrollView(.horizontal) {
                HStack(spacing: 32) {
                    ForEach(homeVM.results) { comic in
                        ComicViewSmall(comic: comic)
                    }
                }
            }
            Spacer()
            Text("test")
        }.background(Color(red: 48/255, green: 44/255, blue: 114/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
