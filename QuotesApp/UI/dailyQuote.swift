//
//  dailyQuote.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-05-27.
//

import SwiftUI

struct dailyQuote: View {
    @StateObject var viewModel = DailyQuoteVM()
    var body: some View {
        ZStack{
            Image("landing_image")
                .resizable()
            VStack{
                Text(viewModel.quoteData?.quote ?? "")
                    .quoteStyle()
                    .padding(SpacingTheme.ten)
                Text(viewModel.quoteData?.author ?? "")
                    .authorStyle()
                
                HStack(alignment: .bottom) {
                    Button {
                        //action
                    } label: {
                        Image(systemName: "heart")
                            .foregroundStyle(.white)
                            .padding(SpacingTheme.ten)
                    }
                    
                    ShareLink(item:viewModel.quoteData?.quote ?? "") {
                        Label("Share", systemImage: "square.and.arrow.up")
                            .foregroundStyle(.white)
                            .padding(SpacingTheme.ten)
                    }
                }
            }
            .padding(SpacingTheme.eight)
            .quoteBackgroundStyle()
        }
        .edgesIgnoringSafeArea([.top, .leading, .trailing])
        .onAppear(perform: {
            Task {
                await viewModel.fetchData()
            }
        })
    }
}

#Preview {
    dailyQuote()
}
