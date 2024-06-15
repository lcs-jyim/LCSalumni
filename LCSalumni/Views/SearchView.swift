//
//  SearchView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/30.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
//    @State var viewModel = LandingViewModel()
    var body: some View {
        //        NavigationStack{
        //            List(viewModel.alumni.sorted(by: { leftHandSide, rightHandSide in
        //                leftHandSide.name < rightHandSide.name
        //            })) { $currentStudent in
        //                NavigationLink{
        //                    DetailView(person:$currentStudent.wrappedValue)
        //                }label: {
        //                    DetailListView(currentAlumnus: currentStudent)
        //                        .foregroundColor(.black)
        //                }
        //                
        //            }
        //            .navigationTitle("Search")
        //        }
        //        .searchable(text: $searchText)
        Text("Search View")
        
    }
    
}

#Preview {
    SearchView()
}
