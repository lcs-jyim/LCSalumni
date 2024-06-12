//
//  DetailListView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/6/3.
//

import SwiftUI

struct DetailListView: View {
//    @State var person: Alumnus
    let currentAlumnus:Alumnus
    @Environment(LandingViewModel.self) var viewModel
    var body: some View {
        HStack{
            HStack{
                Image(currentAlumnus.image)
                    .resizable()
                    .frame(width: 60,height: 80)
                    .offset(y:15)
                    .clipShape(.circle)
                VStack(alignment:.leading){
                    Text(currentAlumnus.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("'"+"\(currentAlumnus.gradYear % 100)")
                }
                        
                }
        }
    }
}

#Preview {
    DetailListView(currentAlumnus: davidMiller)
}
