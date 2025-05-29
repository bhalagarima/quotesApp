//
//  dailyQuote.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-05-27.
//

import SwiftUI

struct dailyQuote: View {
    var body: some View {
        ZStack{
            Image("landing_image")
                .resizable()
            VStack{
                Text("Stay motivated, even when the path is tough—positivity turns every setback into a setup for a greater comeback.")
                    .font(.headline)
                    .fontDesign(.serif)
                    .foregroundStyle(.white)
                    .padding(20)
                Text("~ Unknown")
                    .font(.headline)
                    .fontDesign(.serif)
                    .foregroundStyle(.white)
                
                HStack(alignment: .bottom) {
                    Button {
                        //action
                    } label: {
                        Image(systemName: "heart")
                            .foregroundStyle(.white)
                            .padding(10)
                    }
                    
                    Button {
                        //action
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .foregroundStyle(.white)
                            .padding(10)
                    }
                }
            }
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 4.0, style: .continuous)
                    .stroke(Color.white, lineWidth: 2.0)
                    
            )
        }
        .edgesIgnoringSafeArea([.top, .leading, .trailing])
    }
}

#Preview {
    dailyQuote()
}
