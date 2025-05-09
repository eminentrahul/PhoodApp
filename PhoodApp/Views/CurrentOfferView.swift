//
//  CurrentOfferView.swift
//  PhoodApp
//
//  Created by Rahul Ravi Prakash on 08/05/25.
//

import SwiftUI

struct CurrentOfferView: View {
    var body: some View {
        VStack {
            GeometryReader { proxy in
                VStack {
                    HStack {
                        Rectangle()
                            .frame(width: proxy.size.width * 0.3, height: 1)
                        Text("FLAT ₹200 OFF").fontWeight(.semibold)
                        Rectangle()
                            .frame(width: proxy.size.width * 0.3, height: 1)
                        
                    }
                    
                    HStack(spacing: 16) {
                        ForEach(0..<4){ item in
                            Rectangle()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            
                        }
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    CurrentOfferView()
}
