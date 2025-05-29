//
//  landingView.swift
//  QuotesApp
//
//  Created by Garima Bhala on 2025-05-27.
//

import SwiftUI

struct landingView: View {
    @State private var isWiggle = false
    @State private var isMainView = false
    var body: some View {
        NavigationStack{
            ZStack{
                Image("landing_image")
                    .resizable()
                VStack(alignment:.center) {
                    Spacer()
                    Text("Welcome to Quotes App! - Your daily dose of inspiration.")
                        .font(.largeTitle)
                        .fontDesign(.serif)
                        .foregroundStyle(.white)
                        .padding(20)
                    Text("Explore uplifting quotes to brighten your day and keep you going.")
                        .font(.headline)
                        .fontDesign(.serif)
                        .foregroundStyle(.white)
                        .padding(20)
                    Spacer()
                    Button(action: {
                        //perform action
                        isWiggle.toggle()
                        isMainView = true
                    }, label: {
                        HStack {
                            Text("Continue")
                            Image(systemName: "arrowshape.forward.fill")
                                .symbolEffect(.wiggle, value: isWiggle)
                        }
                        .padding(10)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .continuous
                            )
                            .fill(.brown)
                        )
                    })
                    .padding(20)
                    .font(.title3)
                    .fontDesign(.serif)
                    .navigationDestination(isPresented: $isMainView, destination: {
                        mainView()
                    })
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    landingView()
}
