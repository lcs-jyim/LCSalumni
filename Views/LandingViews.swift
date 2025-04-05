//
//  LandingViews.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct LandingViews: View {
    @State var searchText = ""
    
    var filteredperson: [Info] {
        if searchText.isEmpty {
            return allStudents
        } else {
            return allStudents.filter { person in
                person.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
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
                               
                                ForEach(filteredperson.filter{Student in Student.isFamous == false})  {currentStudent in
                                    NavigationLink{
                                        DetailView(Person:currentStudent)
                                    }label: {
                                        BasicStudentInfo(Person:currentStudent)
                                            .foregroundColor(.black)
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
                                ForEach(filteredperson.filter{Student in Student.isFamous}) {currentStudent in
                                    NavigationLink{
                                        DetailView(Person:currentStudent)
                                    }label: {
                                        BasicStudentInfo(Person:currentStudent)
                                            .foregroundColor(.black)
                                    }
                                    
                                }
                            }
                        }
                        .frame(height:270)
                        
                    }
                    .padding(.leading,10)
                    Spacer()
                }
            }
            .navigationTitle("LCS Alumni")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText)
                            .padding(.leading,10)
                    
                }
                
            }
        }
    
#Preview {
    LandingViews()
}

//#Preview {
//    filterView()
//}
