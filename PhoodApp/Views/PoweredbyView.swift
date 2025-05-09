//
//  PoweredbyView.swift
//  PhoodApp
//
//  Created by Rahul Ravi Prakash on 08/05/25.
//

import SwiftUI

struct PoweredbyView: View {
    var body: some View {
        HStack {
            Text("Powered by")
                .font(.caption)
            ForEach(0..<3){ _ in
                Rectangle()
                    .frame(width: 60, height: 30)
                    .clipShape(.buttonBorder)
            }
        }
//        .padding()
//        .padding(.bottom, -10)
    }
}

#Preview {
    PoweredbyView()
}
