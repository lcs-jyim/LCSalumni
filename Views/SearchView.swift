//
//  SearchView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/30.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack{
            List(allStudents.sorted(by: { leftHandSide, rightHandSide in
                leftHandSide.name < rightHandSide.name
            })) { currentStudent in
                DetailListView(Person: currentStudent)
            }
            .navigationTitle("Search")
        }
        
    }
    
}

#Preview {
    SearchView()
}
