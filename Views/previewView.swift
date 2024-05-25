//
//  LCSalumniApp.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct basicStudentInfo: View {
    
    let studentName:String
    let imageFileTitle:String
    let yearGraduated:String
    let lineNumberRestriction:Int
    var body: some View {
        VStack(alignment:.leading){
            Image(imageFileTitle)
                .resizable()
                .frame(width: 130,height: 160)
                .cornerRadius(5.0)
            Text(studentName)
                .font(.system(size: 15))
                .padding(.leading,5)
                .fixedSize(horizontal: true, vertical: false)
                .lineLimit(lineNumberRestriction)
            Text(yearGraduated)
                .font(.system(size:15 ))
                .padding(.leading,5)
            }
        .frame(width:100)
        .padding(.leading,5)
        .padding(.trailing,5)
            }
        }
    

#Preview {
    basicStudentInfo(studentName: "Vincent Cloutier", imageFileTitle: "Vincent", yearGraduated: "'22", lineNumberRestriction: 2)
}
