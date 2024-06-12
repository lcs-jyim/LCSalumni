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
//        NavigationStack{
//                    List{
//                        ForEach($all.filter{Student in Student.isFavorite.wrappedValue}) {$currentStudent in
//                            let _ = dump(all)
//                            NavigationLink{
//                                DetailView(person:$currentStudent)
//                            }label: {
//                                DetailListView(person:currentStudent)
//                                    .foregroundColor(.black)
//                            }
//                        }
//                    }
//                    .navigationTitle("Favorites")
//        }
        Text("Favorites View")
        
    }
}

#Preview {
    FavoritesView()
}
