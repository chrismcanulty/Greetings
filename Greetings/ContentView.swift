//
//  ContentView.swift
//  Greetings
//
//  Created by Chris McAnulty on 2023-09-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [.cyan, .blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("Greetings!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundStyle(.red)
                    .background(.orange)
                    .cornerRadius(20)
                    .shadow(color: .orange, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
