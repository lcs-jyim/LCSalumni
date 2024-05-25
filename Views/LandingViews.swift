//
//  LandingViews.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct LandingViews: View {
    var body: some View {
        let twoRows  = [GridItem(spacing: 20), GridItem(spacing: 20)]
        NavigationStack{
            VStack {
               
                VStack(alignment: .leading){
                    HStack {
                        Text("Recent Grads")
                            .font(.system(size: 30))
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
                    Spacer()
                }
                
            }
            .navigationTitle("Title to be determined")
            .navigationBarTitleDisplayMode(.inline)
                    
                }
                
            }
        }
    
#Preview {
    LandingViews()
}
