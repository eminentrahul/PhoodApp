//
//  BestOfferView.swift
//  PhoodApp
//
//  Created by Rahul Ravi Prakash on 08/05/25.
//

import SwiftUI

struct BestOffer: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let subtitle: String
}

struct BestOfferView: View {
    
    let offers = [
        BestOffer(imageName: "Image-1", title: "Title-1", subtitle: "Subtitle-1"),
        BestOffer(imageName: "Image-2", title: "Title-2", subtitle: "Subtitle-2"),
        BestOffer(imageName: "Image-3", title: "Title-3", subtitle: "Subtitle-3")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("BEST OFFER FOR YOU")
                Rectangle()
                    .fill (
                        LinearGradient (
                            colors: [.gray, .white],
                            startPoint: .leading,
                            endPoint: .trailing)
                    )
                    .frame(height: 1.0)
             }
            GeometryReader { proxy in
                HStack(spacing: 16) {
                
                    ForEach(offers){ offer in
                        ZStack {
                            Rectangle()
                                .frame(width: proxy.size.width * 0.3, height: proxy.size.width * 0.3)
                                .clipShape(.buttonBorder)
                                .overlay {
                                    Text(offer.title)
                                        .foregroundStyle(.white)
                                }
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    BestOfferView()
}
