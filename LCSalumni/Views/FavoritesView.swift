//
//  FavoritesView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/3.
//

import SwiftUI

struct FavoritesView: View {
    @State var all:[Alumnus] = allStudents
    var body: some View {
        NavigationStack{
                    List{
                        ForEach($all.filter{Student in Student.isFavorite.wrappedValue}) {$currentStudent in
                            let _ = dump(all)
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
