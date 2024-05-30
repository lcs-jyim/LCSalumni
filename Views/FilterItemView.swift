//
//  filterItemView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/27.
//

import SwiftUI

struct FilterItemView: View {
    let Filterobject:Uni
    var body: some View {
            Text(Filterobject.universalItem)
            .foregroundColor(.black)
            .padding(.horizontal,15)
            .padding(.vertical,2)
            .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.cyan))
           
            
            
        
    }
}

#Preview {
    FilterItemView(Filterobject:UofT)
}
