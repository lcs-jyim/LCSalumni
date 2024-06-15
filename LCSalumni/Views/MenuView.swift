//
//  LCSalumniApp.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct MenuView: View {
    //    let person: Alumnus
    let currentAlumnus:Alumnus
//    @Environment(LandingViewModel.self) var viewModel
    
    

    var body: some View {
        
        VStack(alignment:.leading){
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
