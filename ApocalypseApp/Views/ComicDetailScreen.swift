//
//  ComicDetailScreen.swift
//  ApocalypseApp
//
//  Created by mariusz on 13/10/2022.
//

import SwiftUI

struct ComicDetailScreen: View {
    
    let comic: Comic
    
    var body: some View {
        let darkPurpleColor = Color("DarkPurple")
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
            ZStack {
                GeometryReader { metrics in
                    VStack {
                        AsyncImage(url: URL(string: comic.imageUrl)) { cover in
                                cover
                                .aspectRatio(contentMode: .fit)
                                .frame(maxHeight: metrics.size.height * 0.55)
                                      .clipped()
                            } placeholder: {
                                Color.black
                            }                        .overlay(LinearGradient(gradient: Gradient(colors: [.gray.opacity(0.3), darkPurpleColor]), startPoint: .top, endPoint: .bottom))
                            Spacer()
                        }

                        
                    VStack {
                        Spacer().frame(height: metrics.size.height * 0.45)
                        LazyVGrid(columns:columns) {
                            ForEach(comic.creators) { creator in
                                CreatorView(creator: creator)
                            }
                        }
                    }
                }
            }.background(darkPurpleColor).navigationBarTitle(comic.title, displayMode: .inline)
        
    }
}

struct ComicDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        let previewComic = Comic(id: 1, title: "Apocalypse THE END #1",imageUrl: "https://i.annihil.us/u/prod/marvel/i/mg/7/f0/601afd400bb22/portrait_uncanny.jpg",
            creators: [])
        ComicDetailScreen(comic: previewComic)
    }
}
