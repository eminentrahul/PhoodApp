//
//  HeaderView.swift
//  PhoodApp
//
//  Created by Rahul Ravi Prakash on 06/05/25.
//

import SwiftUI

struct HeaderView: View {
    
    @State private var search: String = ""
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    //Take action
                } label: {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "house.fill")
                                .foregroundStyle(.orange)
                            Text("Home")
                                .foregroundStyle(.black)
                                .padding(.leading, -4)
                            Image(systemName: "chevron.down")
                                .font(.subheadline)
                                .foregroundStyle(.black)
                                .padding(.leading, -4)
                        }
                        Text("Full address where order is to be delivered")
                            .foregroundStyle(.black)
                    }
                }
                
                Spacer()
                //Profile Image
                Button {
                    
                } label: {
                    Image(systemName: "person.circle.fill")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(.black)
                }
                .buttonStyle(.plain)
            }
            
            ZStack {
                Rectangle()
                    .frame(height: 70)
                    .cornerRadius(10)
                    .foregroundStyle(.teal)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)
                        .font(.title)
                        .padding(.leading)
                    
                    TextField("Search", text: $searchText)
                        .cornerRadius(8)
                        .padding(.leading)
                    
                    Rectangle()
                        .frame(width: 1, height: 25)
                        .padding(.trailing, 8)
                        .foregroundStyle(.gray)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "microphone.fill")
                            .font(.headline)
                            .foregroundStyle(.orange)
                            .padding(.trailing)
                    }
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    HeaderView()
}
