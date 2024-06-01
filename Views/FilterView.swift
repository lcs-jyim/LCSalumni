//
//  Filterview.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/30.
//

import SwiftUI

struct FilterView: View {
    let gridRows = [GridItem(),GridItem()]
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView(.vertical){
                    VStack(alignment:.leading){
                        Text("Graduation Year")
                        LazyHGrid(rows:gridRows){
                            
                            ForEach(2010..<2020){ year in
                                Button(action:{}){
                                    FilterItemView(filterObject: Uni(universalItem: "\(year)"))
                                }
                            }
                        }
                        Text("Gender")
                        
                        ScrollView(.horizontal) {
                            HStack{
                                ForEach(Genders){ gender in
                                    Button(action:{}){
                                        FilterItemView(filterObject:gender)
                                    }
                                }
                            }
                        }
                        
                        Text("First Name")
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(firstNames){ givenName in
                                    Button(action:{}){
                                        FilterItemView(filterObject:givenName)
                                    }
                                }
                            }
                        }
                        Text("Last Name")
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(lastNames){ familyName in
                                    Button(action:{}){
                                        FilterItemView(filterObject:familyName)
                                    }
                                }
                            }
                        }
                        Text("University Graduated/ Studied in")
                        ScrollView(.horizontal) {
                            HStack{
                                ForEach(CaUniversities){ University in
                                    Button(action:{}){
                                        FilterItemView(filterObject:University)
                                    }
                                }
                            }
                        }
                        
                        
                    }
                }
                .navigationTitle("Filter By...")
                .toolbar{
                    ToolbarItem(placement:.topBarLeading){
                        Button(action:{}){
                            Text("Cancel")
                        }
                    }
                    ToolbarItem(placement:.topBarTrailing){
                        Button(action:{}){
                            Text("Done")
                        }
                        
                    }
                }
            }
        }
        
    }
    
}

#Preview {
    FilterView()
}
