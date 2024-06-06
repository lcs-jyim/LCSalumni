//
//  SearchView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/30.
//

import SwiftUI

struct SearchView: View {
    @State var all:[Info] = allStudents
    var body: some View {
        NavigationStack{
            List($all.sorted(by: { leftHandSide, rightHandSide in
                leftHandSide.name.wrappedValue < rightHandSide.name.wrappedValue
            })) { $currentStudent in
                NavigationLink{
                    DetailView(Person:$currentStudent)
                }label: {
                    DetailListView(Person:currentStudent)
                        .foregroundColor(.black)
                }
            }
            .navigationTitle("Search")
        }
        
    }
    
}

#Preview {
    SearchView()
}
