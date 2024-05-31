//
//  DetailView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/31.
//

import SwiftUI
struct DetailView: View {
    @Binding var Person: Info
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
                            Image(Person.image)
                                .resizable()
                                .frame(width: 151,height:180)
                            VStack(alignment: .leading){
                                Text("Name: "+Person.name)
                                Text("Graduation Year: "+"\(Person.gradYear)")
                                Text("Significant Achievements: "+Person.sigAchievement)
                                    .lineLimit(3)
                            }
                            .padding(20)
                            .background(RoundedRectangle(cornerRadius: 20).fill(.gray))
                        }
                        VStack{
                            Text("Description:")
                                .font(.title)
                            
                            Text(Person.description)
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
            .navigationTitle(Person.name+Person.gradYearSimp)
            .toolbar{
                ToolbarItem(placement:.topBarLeading){
                    Button(action:{}){
                        HStack{
                            Image(systemName: "chevron.left")
                            Text("Back to Home")
                        }
                    }
                }
                ToolbarItem(placement:.topBarTrailing){
                    Button(action:{Person.isFavorite.toggle()}){
                        Image(systemName: Person.isFavorite ? "star.fill" : "star")
                    }
                }
            }
        }
    }
}

#Preview {
    DetailView(Person: .constant(davidMiller))
}
