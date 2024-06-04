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
            VStack{
//                    List(allStudents.filter{Student in Student.isFavorite}){currentStudent in
//                        DetailListView(Person: currentStudent)
//                    }
                ScrollView(.vertical) {
                    List{
                        ForEach($all.filter{Student in Student.isFavorite}) {$currentStudent in
                            NavigationLink{
                                DetailView(Person:$currentStudent)
                            }label: {
                                BasicStudentInfo(Person:currentStudent)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                }
            
        }
        
    }
}

#Preview {
    FavoritesView()
}
