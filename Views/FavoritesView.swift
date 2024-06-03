//
//  FavoritesView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/3.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationStack{
            VStack{
                    List(allStudents.filter{ $0.isFavorite}){currentStudent in
                        DetailListView(Person: currentStudent)
                    }
                }
            .navigationTitle("Favorites")
        }
        
    }
}

#Preview {
    FavoritesView()
}
