//
//  listingView.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-05-27.
//

import SwiftUI

struct listingView: View {
    var body: some View {
        ZStack{
            Image("landing_image")
                .resizable()
            VStack{
                List(0..<10) { item in
                    VStack{
                        Text("Stay motivated, even when the path is tough—positivity turns every setback into a setup for a greater comeback.")
                            .font(.headline)
                            .fontDesign(.serif)
                            .foregroundStyle(.white)
                            
                        Text("~ Unknown")
                            .font(.headline)
                            .fontDesign(.serif)
                            .foregroundStyle(.white)
                    }
                    .padding(10)
                    .listRowBackground(
                        RoundedRectangle(cornerRadius: 10.0, style: .continuous)
                            .stroke(Color.white, lineWidth: 2.0)
                    )
                }
                .listRowSpacing(10)
                .scrollContentBackground(.hidden)
            }
        }
        .edgesIgnoringSafeArea([.top, .leading, .trailing])
    }
}

#Preview {
    listingView()
}
