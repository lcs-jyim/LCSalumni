//
//  DetailView.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/31.
//

import SwiftUI
struct DetailView: View {
    //MARK: Computed Properties
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
                        //when No image is stored, show Text "No Image"
                        if let image = person.image {
                            Image(image)
                                .resizable()
                                .frame(width: 151,height:180)
                        }
                        else{
                            Text("No Image")
                        }
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
            VStack{
                Spacer()
                Rectangle()
                    .fill(.gray)
                    .frame(height:40)
            }
            .ignoresSafeArea()
            .navigationTitle(person.name+"'"+String(format: "%02d", person.gradYear % 100))
        }
        .toolbar{
            ToolbarItem(placement:.topBarTrailing){
                //Check The database for if the Person is Favorite or not
                Image(systemName: person.isFavorite ? "star.fill" : "star")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                //Change Data Stored in Database
                    .onTapGesture{
                        person.isFavorite.toggle()
                        viewModel.update(Student:person)
                    }
            }
        }
    }
}


#Preview {
    NavigationStack {
        DetailView(person: .constant(davidMiller))
    }
}
