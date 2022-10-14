//
//  ComicViewSmall.swift
//  ApocalypseApp
//
//  Created by mariusz on 09/10/2022.
//

import SwiftUI

struct ComicViewSmall: View {
    let comic: Comic
    var body: some View {
        VStack(alignment: .center) {
            AsyncImage(url: URL(string: comic.imageUrl), scale: 2) { cover in
                cover
                  .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.black
            }.frame(height: 420)
            Text(comic.title).foregroundColor(Color.orange)
        }.padding()
    }
}

struct ComicViewSmall_Previews: PreviewProvider {
    static var previews: some View {
        let previewComic = Comic(id: 1, title: "Apocalypse THE END #1",imageUrl: "https://i.annihil.us/u/prod/marvel/i/mg/7/f0/601afd400bb22/portrait_uncanny.jpg", creators: [MarvelResponse.Item]())
        ComicViewSmall(comic: previewComic)
    }
}
