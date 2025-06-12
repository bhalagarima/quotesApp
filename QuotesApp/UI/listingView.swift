//
//  listingView.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-05-27.
//

import SwiftUI

struct listingView: View {
    @StateObject var listingVM = ListingViewModel()
    var body: some View {
        ZStack{
            Image("landing_image")
                .resizable()
            VStack{
                List{
                    ForEach(listingVM.quotes) { item in
                        VStack(alignment:.center,spacing: 10.0){
                            Text(item.quote)
                                .quoteStyle()
                            Text(item.author)
                                .authorStyle()
                            
                            HStack() {
                                Button {
                                    //action
                                } label: {
                                    Image(systemName: "heart")
                                        .foregroundStyle(.white)
                                        .padding(SpacingTheme.six)
                                }
                                
                                ShareLink(item:item.quote) {
                                    Label("", systemImage: "square.and.arrow.up")
                                        .foregroundStyle(.white)
                                }
                            }
                        }
                        .padding(SpacingTheme.eight)
                        .frame(maxWidth: .infinity)
                        .quoteBackgroundStyleRow()
                    }
                }
                .listRowSpacing(SpacingTheme.eight)
                .scrollContentBackground(.hidden)
            }
        }
        .edgesIgnoringSafeArea([.top, .leading, .trailing])
        .onAppear(perform: {
            Task {
                await listingVM.fetchData()
            }
        })
    }
}

#Preview {
    listingView()
}
