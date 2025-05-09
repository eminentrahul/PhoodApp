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
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
