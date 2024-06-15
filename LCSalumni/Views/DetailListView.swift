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
    var body: some View {
        HStack{
            HStack{
                //when No image is stored, show Text "No Image"
                if let image = currentAlumnus.image {
                    Image(image)
                        .resizable()
                        .frame(width: 60,height: 80)
                        .offset(y:15)
                        .clipShape(.circle)
                } else {
                    Text("No image")
                }
                VStack(alignment:.leading){
                    Text(currentAlumnus.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("'"+String(format: "%02d", currentAlumnus.gradYear % 100))
                }
            }
        }
    }
}

#Preview {
    DetailListView(currentAlumnus: davidMiller)
}
