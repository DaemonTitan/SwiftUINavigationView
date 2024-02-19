//
//  ContentView.swift
//  NavigationView
//
//  Created by Tony Chen on 14/1/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Screen(title: "Home",
                   text: "Home Screen",
                   imageName: "house")
        }
        
    }
}

struct Screen: View {
    
    let title: String
    let text: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .imageScale(.large)
                .foregroundStyle(.tint)
                .frame(width: 100,
                       height: 100,
                       alignment: .center)
                .padding()
            Text(text)
                .font(.system(size: 20,
                              weight: .light,
                              design: .default))
                .padding()
            
            NavigationLink(destination: Screen(title: "Notification",
                                               text: "Second Screen",
                                               imageName: "bell"),
                           label: {
                continueButton(color: .pink,
                               buttonLabel: "Notification")
            })
            
        }
        .navigationTitle(title)

    }
}

struct continueButton: View {
    let color: Color
    let buttonLabel: String
    
    var body: some View {
        Text(buttonLabel)
            .frame(width: 200,
                   height: 50,
                   alignment: .center)
            .background(color)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(
                cornerRadius: 10.0,
                style: .continuous))
    }
}



#Preview {
    ContentView()
}
