//
//  PromoCarouselView.swift
//  PhoodApp
//
//  Created by Rahul Ravi Prakash on 08/05/25.
//

import SwiftUI


struct PromoModel: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let subtitle: String
}

struct PromoCarouselView: View {
    
    @State private var currentIndex: Int = 0
    
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    
    let items = [
        PromoModel(imageName: "person", title: "Title-1", subtitle: "Subtitle-1"),
        PromoModel(imageName: "person", title: "Title-2", subtitle: "Subtitle-2"),
        PromoModel(imageName: "person", title: "Title-3", subtitle: "Subtitle-3")
    ]
    
    var body: some View {
        VStack {
            //Rectangle
            TabView(selection: $currentIndex) {
                ForEach(items.indices, id: \.self) { index in
                    let item = items[index]
                    GeometryReader { proxy in
                        ZStack {
                            Rectangle()
                                .frame(width: proxy.size.width * 0.9, height: 150)
                                .clipShape(.buttonBorder)
                                .padding(.top, 16)
                                .overlay {
                                    Text(item.title)
                                        .foregroundStyle(.white)
                                        .font(.headline)
                                }
                                .padding(.horizontal)
                                .onTapGesture {
                                    print(item.subtitle)
                                }
                        }
                    }
                    
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 180)
            .onReceive(timer) { _ in
                withAnimation {
                    currentIndex = (currentIndex + 1) % items.count
                }
            }
            
            //Page Indicator
            HStack(spacing: 8) {
                ForEach(items.indices, id: \.self) { index in
                    Circle()
                        .fill(index == currentIndex ? Color.black : Color.gray)
                        .frame(width: index == currentIndex ? 10 : 6, height: index == currentIndex ? 10 : 6)
                        .animation(.easeInOut, value: currentIndex)
                }
            }
        }
    }
}

#Preview {
    PromoCarouselView()
}
