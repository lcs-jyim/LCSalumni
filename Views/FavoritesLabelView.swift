//
//  DetailListView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/3.
//

import SwiftUI

struct FavoritesLabelView: View {
    @State var Alumnus: alumnusInfo
    var body: some View {
        HStack{
            HStack{
                Image(Alumnus.image)
                    .resizable()
                    .frame(width: 60,height: 80)
                    .offset(y:15)
                    .clipShape(.circle)
                VStack(alignment:.leading){
                    Text(Alumnus.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        
                    Text(Alumnus.gradYearSimp)
                }
                        
                }
        }
    }
}

#Preview {
    FavoritesLabelView(Alumnus:diegoRomero)
}
