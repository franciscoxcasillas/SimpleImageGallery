//
//  ContentView.swift
//  SimpleImageGallery
//
//  Created by Francisco Jean on 27/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("My gallery")
                .font(.title)
            Image("Mountain")
                .resizable()
                .scaledToFit()
                .clipShape(.circle)
                .background(Color.green)
            Image("Beach")
                .resizable()
                .scaledToFit()
                .rotationEffect(.degrees(40))
                .frame(width:100)
            Image("Desert")
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
            Image("Forest")
                .resizable()
                .scaledToFit()
                .opacity(0.5)
                .overlay(Text("Hello"))
            Image("City")
                .resizable()
                .scaledToFit()
                .border(Color.main, width: 3)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
