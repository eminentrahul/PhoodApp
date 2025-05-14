//
//  ContentView.swift
//  PhoodApp
//
//  Created by Rahul Ravi Prakash on 06/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            GeometryReader{ proxy in
                ScrollView {
                    ZStack {
                        
                        Rectangle()
                            .frame(height: proxy.size.height * 0.55)
                            .cornerRadius(30)
                            .foregroundStyle(.blue.gradient)
                            .overlay {
                                VStack {
                                    HeaderView()
                                        .padding(.top, 20)
                                    
                                    Rectangle()
                                        .foregroundStyle(.white.gradient.quinary)
                                        .frame(height: 80)
                                    
                                    CurrentOfferView()
                                        .padding()
                                    
                                    PoweredbyView()
                                        .padding()
                                }
                            }
                    }
                    
                    
                    PromoCarouselView()
                                        
                    BestOfferView()
                    
                    QuickSelectionButtonView()
                        .padding()
                }
                .padding(.bottom, 0)
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}

struct QuickSelectionButtonView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Text("Reorder")
                        .fontDesign(.rounded)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                }
                .padding()
                .background(.black)
                .clipShape(.capsule)
                
                Button {
                    
                } label: {
                    Text("10 Minutes Delivery")
                        .fontDesign(.rounded)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
                .padding()
                .background(.white)
                .clipShape(.buttonBorder)
                
                Spacer()
            }
        }
    }
}
