//
//  FavoritesView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/3.
//

import SwiftUI

struct FavoritesView: View {
    @State var all:[alumnusInfo] = Favorites(in: allAlumni)
    var body: some View {
        NavigationStack{
            HStack{
                Spacer()
                            Button("Refresh") {
                                        all = Favorites(in: allAlumni)
                                    }
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                                }
                                .padding([.top, .horizontal])
                List{
                    
                    ForEach($all) {$currentAlumnus in
                        NavigationLink{
                            DetailView(Alumnus:currentAlumnus)
                        }label: {
                            FavoritesLabelView(Alumnus:currentAlumnus)
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

