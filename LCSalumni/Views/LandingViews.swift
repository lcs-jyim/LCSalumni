//
//  LandingViews.swift
//  LCSalumni
//
//  Created by junxi Yim on 2024/5/24.
//

import SwiftUI

struct LandingViews: View {
    //MARK: Computed Properties
    //Initializing Search Text
    @State var searchText = ""
    //Initializing Filter view
    @State var isSheetPresented = false
    //Initializing viewModel in all view
    @State var viewModel = LandingViewModel()
    var body: some View {
        let twoRows  = [GridItem(), GridItem()]
        NavigationStack{
            VStack {
                //Top "recently Grads" section
                ScrollView(.vertical){
                    VStack(alignment: .leading){
                        HStack {
                            Text("Recent Grads")
                                .font(.system(size: 25))
                                .padding(.bottom,5)
                                .bold()
                            Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 10,height:22)
                                .bold()
                        }
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: twoRows,spacing: 10) {
                                ForEach($viewModel.alumni.filter{$0.isFamous.wrappedValue == false}) {$currentStudent in
                                    NavigationLink{
                                        DetailView(person:$currentStudent)
                                            .environment(viewModel)
                                            .onTapGesture{
                                                viewModel.update(Student:currentStudent)
                                            }
                                    }label: {
                                        MenuView(currentAlumnus:currentStudent)
                                    }
                                    .foregroundColor(.black)
                                }
                            }
                        }
                        .frame(height:270)
                        
                        HStack{
                            Text("Famous Alumni")
                                .font(.system(size: 25))
                                .bold()
                            Image(systemName: "chevron.right")
                                .resizable()
                                .frame(width: 10,height:22)
                                .bold()
                        }
                        .padding(.vertical,5)
                        //bottom "Famous Alumni" section
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: twoRows,spacing: 10) {
                                ForEach($viewModel.alumni.filter{$0.isFamous.wrappedValue}) { $currentStudent in
                                    NavigationLink{
                                        DetailView(person:$currentStudent)
                                            .environment(viewModel)
                                            .onTapGesture{
                                                viewModel.update(Student:currentStudent)
                                            }
                                    }label: {
                                        MenuView(currentAlumnus:currentStudent )
                                    }
                                    .foregroundColor(.black)
                                }
                            }
                        }
                        .frame(height:270)
                    }
                    .padding(.leading,10)
                    Spacer()
                }
            }
            .navigationTitle("Title to be determined")
            .navigationBarTitleDisplayMode(.inline)
            //Search Field
            .searchable(text: $searchText)
            .onChange(of: searchText) {
                Task {
                    try await viewModel.filterAlumni(on: searchText)
                }
            }
            .padding(.leading,10)
            //Toggle Filters
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button(action:{isSheetPresented.toggle()}){
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                    .sheet(isPresented: $isSheetPresented) {
                        FilterView()
                            .presentationDetents([.large, .medium,.fraction(0.63)])
                    }
                }
            }
        }
    }
}

#Preview {
    LandingViews()
}


