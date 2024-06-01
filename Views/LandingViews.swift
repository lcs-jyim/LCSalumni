//
//  LandingViews.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct LandingViews: View {
    @State var searchText = ""
    @State var isSheetPresented = false
    var body: some View {
        let twoRows  = [GridItem(), GridItem()]
        NavigationStack{
            VStack {
                ScrollView(.vertical){
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
                                    NavigationLink{
                                        DetailView(Person:currentStudent)
                                    }label: {
                                        BasicStudentInfo(Person:currentStudent)
                                    }
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
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: twoRows,spacing: 10) {
                                ForEach(FamousAlumni) {currentStudent in
                                    BasicStudentInfo(Person:currentStudent)
                                    
                                }
                            }
                        }
                        .frame(height:270)
                        
                    }
                    .padding(.leading,10)
                    Spacer()
                }
            }
            .navigationTitle("Title to be determined")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText)
                            .padding(.leading,10)
                            .toolbar{
                                ToolbarItem(placement: .topBarTrailing){
                                    Button(action:{isSheetPresented.toggle()}){
                                        Image(systemName: "line.3.horizontal.decrease.circle")
                                            
                                            }
                                    .sheet(isPresented: $isSheetPresented) {
                                        FilterView()
                                            .presentationDetents([.large, .medium,.fraction(0.63)])
                                    }
                                    
                                }
                            }
                    
                }
                
            }
        }
    
#Preview {
    LandingViews()
}

//#Preview {
//    filterView()
//}
