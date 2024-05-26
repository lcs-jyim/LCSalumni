//
//  LandingViews.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct LandingViews: View {
    var body: some View {
        let twoRows  = [GridItem(), GridItem()]
        NavigationStack{
            VStack {
               
                VStack(alignment: .leading){
                    HStack {
                        Text("Recent Grads")
                            .font(.system(size: 25))
                            .padding(.bottom,5)
                            .bold()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10,height:22)
                            .bold()
                    }
                    
                    
                    
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: twoRows,spacing: 10) {
                            ForEach(recentlyGrads) {currentStudent in
                                basicStudentInfo(Person:currentStudent)
                                
                            }
                        }
                    }
                    .frame(height:270)
                  
                    HStack{
                        Text("Famous Alumni")
                            .font(.system(size: 25))
                            .bold()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10,height:22)
                            .bold()
                    }
                    .padding(.vertical,5)
                    .border(.red)
                    ScrollView(.horizontal) {
                                            LazyHGrid(rows: twoRows,spacing: 10) {
                                                ForEach(FamousAlumni) {currentStudent in
                                                    basicStudentInfo(Person:currentStudent)
                                                    
                                                }
                                            }
                                        }
                    
                }
                .padding(.leading,10)
                
            }
            .navigationTitle("Title to be determined")
            .navigationBarTitleDisplayMode(.inline)
                    
                }
                
            }
        }
    
#Preview {
    LandingViews()
}
