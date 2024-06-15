//
//  FavoritesView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/3.
//

import SwiftUI

struct FavoritesView: View {
//    @State var all:[Alumnus] = allStudents
    @State var viewModel = LandingViewModel()
   
    var body: some View {
                NavigationStack{
                            List{
                                ForEach($viewModel.alumni.filter{$0.isFavorite.wrappedValue}) {$currentStudent in
                                    NavigationLink{
                                        DetailView(person:$currentStudent)
                                            .onTapGesture{
                                                viewModel.update(Student:currentStudent)
                                            }
                                            .environment(viewModel)
                                    }label: {
                                        DetailListView(currentAlumnus:currentStudent)
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                            .navigationTitle("Favorites")
                }
//        Text("Favorites View")
        
    }
}

#Preview {
    FavoritesView()
}
