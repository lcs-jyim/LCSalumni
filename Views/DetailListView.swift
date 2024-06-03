//
//  DetailListView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/3.
//

import SwiftUI

struct DetailListView: View {
    let Person: Info
    var body: some View {
        HStack{
            HStack{
                Image(Person.image)
                    .resizable()
                    .frame(width: 60,height: 80)
                    .offset(y:15)
                    .clipShape(.circle)
                VStack(alignment:.leading){
                    Text(Person.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(Person.gradYearSimp)
                }
                        
                }
        }
    }
}

#Preview {
    DetailListView(Person:davidMiller)
}
