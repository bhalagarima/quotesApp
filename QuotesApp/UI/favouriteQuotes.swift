//
//  favouriteQuotes.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-05-27.
//

import SwiftUI
import CoreData

struct favouriteQuotes: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Quote.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Quote.author, ascending: true)]) var favouriteQuotes: FetchedResults<Quote>
    
    var body: some View {
        ZStack{
            Image("landing_image")
                .resizable()
            VStack{
                List{
                    ForEach(favouriteQuotes) { item in
                        VStack(alignment:.center,spacing: 10.0){
                            Text(item.quote ?? "")
                                .quoteStyle()
                            Text(item.author ?? "")
                                .authorStyle()
                            
                            HStack() {
                                Button {
                                    //action
                                } label: {
                                    Image(systemName:"heart.fill")
                                        .foregroundStyle(.white)
                                        .padding(SpacingTheme.six)
                                }
                                
                                ShareLink(item:item.quote ?? "") {
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
    }
}

#Preview {
    favouriteQuotes()
}
