//
//  FavoritesView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/3.
//

import SwiftUI

struct FavoritesView: View {
    @State var all:[Info] = allStudents
    @State var recent:[Info] = recentlyGrads
    var body: some View {
        NavigationStack{
                    List{
                        ForEach($all.filter{Student in Student.isFavorite.wrappedValue}) {$currentStudent in
                            NavigationLink{
                                DetailView(Person:$currentStudent)
                            }label: {
                                DetailListView(Person:currentStudent)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    .navigationTitle("Favorites")
        }
        
    }
}

#Preview {
    FavoritesView()
}
