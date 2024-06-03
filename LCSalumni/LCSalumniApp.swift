//
//  LCSalumniApp.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

@main
struct LCSalumniApp: App {
    var body: some Scene {
        WindowGroup{
            TabView {
                LandingViews()
                    .tabItem {
                        Image(
                            systemName: "house")
                        Text("Home")
                    }
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                FavoritesView()
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Favorites")
                    }

            }

        }
    }
}
