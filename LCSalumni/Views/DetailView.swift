//
//  DetailView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/31.
//

import SwiftUI
struct DetailView: View {
    @Binding var person: Alumnus
    @Environment(LandingViewModel.self) var viewModel
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.gray)
                .ignoresSafeArea()
            Rectangle()
                .fill(.mint)
            ScrollView(.vertical){
                VStack{
                    HStack{
                        Image(person.image)
                            .resizable()
                            .frame(width: 151,height:180)
                        VStack(alignment: .leading){
                            Text("Name: "+person.name)
                            Text("Graduation Year: "+"\(person.gradYear)")
                            Text("Significant Achievements: "+person.sigAchievement)
                                .lineLimit(3)
                        }
                        .padding(20)
                        .background(RoundedRectangle(cornerRadius: 20).fill(.gray))
                    }
                    VStack{
                        Text("Description:")
                            .font(.title)
                        
                        Text(person.description)
                            .foregroundColor(.yellow)
                    }
                    .padding(.vertical,20)
                    .background(RoundedRectangle(cornerRadius: 20).fill(.gray))
                    
                }
            }
//            
            VStack{
                Spacer()
                Rectangle()
                    .fill(.gray)
                    .frame(height:40)
            }
            .ignoresSafeArea()
            
        }
        .navigationTitle(person.name+"'"+"\(person.gradYear % 100)")
//        .toolbar{
//            ToolbarItem(placement:.topBarTrailing){
//                Button(action:{person.isFavorite.toggle()}){
//                    Image(systemName: person.isFavorite ? "star.fill" : "star")
//                }
//            }
//        }
    }
}

#Preview {
    NavigationStack {
        DetailView(person: .constant(davidMiller))
    }
}
