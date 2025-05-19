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
    
    @State private var isFilled = false
    @State private var isReorder = true
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    if !isReorder {
                        isReorder = true
                    }
                    
                    if isFilled {
                        isFilled = false
                    }
                    
                }) {
                    Text("Reorder")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(isReorder ? .white : .black)
                        .frame(height: 16)
                        .frame(width: .infinity)
                        .padding()
                        .background(
                            Capsule()
                                .fill(isFilled ? Color.whiteGrayGradient() : Color.blackWhiteGradient())
                        )
                        .overlay(
                            Capsule()
                                .stroke(Color.black.opacity(0.1), lineWidth: 2)
                        )
                }
                .animation(.easeInOut, value: isReorder)
                
                Button(action: {
                    if !isFilled {
                        isFilled = true
                    }
                    
                    if isReorder {
                        isReorder = false
                    }
                }) {
                    Text("10 Minutes Delivery")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(isFilled ? .white : .black)
                        .frame(height: 16)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            Capsule()
                                .fill(isFilled ? Color.blackWhiteGradient() : Color.whiteGrayGradient())
                        )
                        .overlay(
                            Capsule()
                                .stroke(.black, lineWidth: 2)
                        )
                }
                .frame(height: 30)
                .animation(.easeInOut, value: isFilled)
                
                Spacer()
            }
            .padding()
        }
    }
}

extension Color {
    static func blackWhiteGradient() -> Gradient {
        return Gradient(colors: [.black.opacity(0.5), .black.opacity(0.6), .black.opacity(0.7), .black.opacity(0.5)])
    }
    
    static func whiteGrayGradient() -> Gradient {
        return Gradient(colors: [.white, .gray.opacity(0.5)])
    }
}
