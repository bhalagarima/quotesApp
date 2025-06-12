//
//  dailyQuote.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-05-27.
//


import SwiftUI
import CoreData

struct dailyQuote: View {
    @StateObject var viewModel = DailyQuoteVM()
    @State var isFavorite: Bool = false
    @FetchRequest(entity: Quote.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Quote.author, ascending: true)]) var favQuotes: FetchedResults<Quote>
    
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
                        viewModel.saveFavourite(quote: viewModel.quoteData ?? QuoteModel(id: 0, quote: "", author: ""))
                        viewModel.favouriteQuotes.append(contentsOf: favQuotes)
                        isFavorite.toggle()
                        
                    } label: {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
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
                isFavorite = false
                if favQuotes.count > 0 {
                    favQuotes.forEach({ item in
                        if item.id == viewModel.quoteData?.id ?? 0 {
                            // already in fav list
                            isFavorite = true
                        }
                    })
                }
            }
        })
    }
}

#Preview {
    dailyQuote()
}
