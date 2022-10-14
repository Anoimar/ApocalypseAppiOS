//
//  HomeScreen.swift
//  ApocalypseApp
//
//  Created by mariusz on 13/10/2022.
//

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject var homeVM = HomeViewModel()
    
    var body: some View {
        VStack() {
            ScrollView(.horizontal) {
                HStack(spacing: 32) {
                    ForEach(homeVM.comics) { comic in
                        NavigationLink(destination: ComicDetailScreen(comic: comic)){
                            ComicViewSmall(comic: comic)
                        }
                    }
                }
            }
            Spacer()
            Image("xlogo")
                .resizable()
                .frame(width: 48.0, height: 48.0)
        }.background(
            Image("apocalypse_background1")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 5)
        )
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
