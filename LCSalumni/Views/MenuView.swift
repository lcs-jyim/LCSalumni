//
//  LCSalumniApp.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct MenuView: View {
    //MARK: Computed Properties
    let currentAlumnus:Alumnus
    
    var body: some View {
        VStack(alignment:.leading){
            //when No image is stored, show Text "No Image"
            if let image = currentAlumnus.image {
                Image(image)
                    .resizable()
                    .frame(width: 88,height: 108)
                    .cornerRadius(5.0)
            } else {
                Text("No Image")
            }
            Text(currentAlumnus.name)
                .font(.system(size: 10))
                .padding(.leading,5)
                .fixedSize(horizontal: true, vertical: false)
            //taking the remainders of the year a grad is graduated divided by 100, convinently getting the last 2 digits of their grad year
            Text("'"+String(format: "%2d", currentAlumnus.gradYear % 100))
                .font(.system(size:10 ))
                .padding(.leading,5)
        }
        .padding(.leading,5)
        .padding(.trailing,5)
        .padding(.vertical,30)
    }
}

#Preview {
    MenuView(currentAlumnus: vincentCloutier)
}
