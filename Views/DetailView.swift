//
//  DetailView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/31.
//

import SwiftUI
struct DetailView: View {
    @Bindable var Alumnus: alumnusInfo
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .fill(.gray)
                    .ignoresSafeArea()
                Rectangle()
                    .fill(.mint)
                ScrollView(.vertical){
                    VStack{
                        HStack{
                            Image(Alumnus.image)
                                .resizable()
                                .frame(width: 151,height:180)
                                
                            VStack(alignment: .leading){
                                Text("Name: "+Alumnus.name)
                                    
                                Text("Graduation Year: "+"\(Alumnus.gradYear)")
                                Text("Significant Achievements: "+Alumnus.sigAchievement)
                                    .lineLimit(3)
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 20).fill(.gray))
                        }
                        VStack{
                            Text("Description:")
                                .font(.title)
                            
                            Text(Alumnus.description)
                                .foregroundColor(.yellow)
                        }
                        .padding(.vertical,20)
                        .background(RoundedRectangle(cornerRadius: 20).fill(.gray))
                        
                    }
                }
                
                VStack{
                    Spacer()
                    Rectangle()
                        .fill(.gray)
                        .frame(height:40)
                }
                .ignoresSafeArea()
                
            }
            .navigationTitle(Alumnus.name+Alumnus.gradYearSimp)
            
            .toolbar{
                ToolbarItem(placement:.topBarTrailing){
                    Button(action:{Alumnus.isFavorite.toggle()}){
                        Image(systemName: Alumnus.isFavorite ? "star.fill" : "star")
                    }
                }
            }
        }
    }
}

#Preview {
    DetailView(Alumnus: diegoRomero)
}
