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
                .padding()
            HStack{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "powersleep")
                    .foregroundColor(.blue)
                Image(systemName: "cloud.fill")
                    .foregroundColor(.green)
            }
            AsyncImage(url: URL(string: "https://64.media.tumblr.com/c63505278caaf5384081bb7691dcab88/f8a646d0e2af3d70-11/s1280x1920/8d9ac10000327dce113119f7f545713670c7a169.jpg")) { image in image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                        Text("Wait")
                    }
                    .frame(width: 200, height: 200)
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
