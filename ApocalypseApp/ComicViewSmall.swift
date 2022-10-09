//
//  ComicViewSmall.swift
//  ApocalypseApp
//
//  Created by mariusz on 09/10/2022.
//

import SwiftUI

struct ComicViewSmall: View {
    let comic: MarvelResponse.Result
    var body: some View {
        VStack(alignment: .center) {
            AsyncImage(url: URL(string: getImageUrl()), scale: 2) { cover in
                cover
                  .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.black
            }.frame(height: 420)
            Text(comic.title).foregroundColor(Color.orange)
        }.padding()
    }
    
    private func getImageUrl() -> String {
        let image = comic.thumbnail
        return "\(image?.path ?? "").\(image?.extension ?? "")"
    }
}
