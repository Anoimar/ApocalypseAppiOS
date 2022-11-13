//
//  ContentView.swift
//  ApocalypseApp
//
//  Created by mariusz on 11/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
      let coloredAppearance = UINavigationBarAppearance()
      coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.orange]
      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
      
      UINavigationBar.appearance().standardAppearance = coloredAppearance
      UINavigationBar.appearance().compactAppearance = coloredAppearance
      
      UINavigationBar.appearance().tintColor = .orange
    }
    
    var body: some View {
        NavigationView {
            HomeScreen().navigationBarTitle("Apocalypse Last Sightings",displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
