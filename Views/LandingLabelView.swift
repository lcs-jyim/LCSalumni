//
//  LCSalumniApp.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct LandingLabelView: View {
    let Alumnus:alumnusInfo
    var body: some View {
        VStack(alignment:.leading){
            Image(Alumnus.image)
                .resizable()
                .frame(width: 88,height: 108)
                .cornerRadius(5.0)
            Text(Alumnus.name)
                .font(.system(size: 10))
                .padding(.leading,5)
                .fixedSize(horizontal: true, vertical: false)
                
            Text(Alumnus.gradYearSimp)
                .font(.system(size:10 ))
                .padding(.leading,5)
            }
        .padding(.leading,5)
        .padding(.trailing,5)
        .padding(.vertical,30)
        
            }
        }
    

#Preview {
    LandingLabelView(Alumnus:alexRivera)
}
