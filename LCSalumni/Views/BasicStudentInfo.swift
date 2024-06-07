//
//  LCSalumniApp.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct BasicStudentInfo: View {
    let person: Alumnus
    
    var body: some View {
        
        VStack(alignment:.leading){
            Image(person.image)
                .resizable()
                .frame(width: 88,height: 108)
                .cornerRadius(5.0)
            Text(person.name)
                .font(.system(size: 10))
                .padding(.leading,5)
                .fixedSize(horizontal: true, vertical: false)
            Text(person.gradYearSimp)
                .font(.system(size:10 ))
                .padding(.leading,5)
        }
        .padding(.leading,5)
        .padding(.trailing,5)
        .padding(.vertical,30)
        
    }
}


#Preview {
    BasicStudentInfo(person: vincentCloutier)
}
