//
//  FavoritesView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/3.
//

import SwiftUI

struct FavoritesView: View {
    @State var all:[Info] = Favorites(in: allStudents)
    var body: some View {
        NavigationStack{
            HStack{
                Spacer()
                            Button("Refresh") {
                                        all = Favorites(in: allStudents)
                                    }
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                                }
                                .padding([.top, .horizontal])
                List{
                    
                    ForEach($all) {$currentStudent in
                        NavigationLink{
                            DetailView(Person:currentStudent)
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

