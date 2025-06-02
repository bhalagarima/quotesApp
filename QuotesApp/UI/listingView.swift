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
                    VStack(spacing: 10.0){
                        Text("Stay motivated, even when the path is tough—positivity turns every setback into a setup for a greater comeback.")
                            .quoteStyle()
                        Text("~ Unknown")
                            .authorStyle()
                        
                        HStack(alignment: .bottom) {
                            Button {
                                //action
                            } label: {
                                Image(systemName: "heart")
                                    .foregroundStyle(.white)
                            }
                            
                            Button {
                                //action
                            } label: {
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundStyle(.white)
                            }
                        }
                    }
                    .padding(SpacingTheme.eight)
                    .quoteBackgroundStyleRow()
                }
                .listRowSpacing(SpacingTheme.eight)
                .scrollContentBackground(.hidden)
                
            }
        }
        .edgesIgnoringSafeArea([.top, .leading, .trailing])
    }
}

#Preview {
    listingView()
}
