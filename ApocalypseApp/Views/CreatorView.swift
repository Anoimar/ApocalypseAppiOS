//
//  CreatorView.swift
//  ApocalypseApp
//
//  Created by mariusz on 14/10/2022.
//

import SwiftUI

struct CreatorView: View {
    let creator: MarvelResponse.Item

    
    var body: some View {
        VStack {
            Text(creator.role?.uppercased() ?? "").foregroundColor(Color("GoldText"))
            Text(creator.name).foregroundColor(.white)
        }
        .padding()
        .background(
            .black
        ).clipShape(Capsule())
        
    }
}

struct CreatorView_Previews: PreviewProvider {
    static var previews: some View {
        CreatorView(
            creator: MarvelResponse.Item(
                resourceURI: "", name: "Mahmud Asrar", role: "penciler (cover)", type: nil
            )
        )
    }
}
