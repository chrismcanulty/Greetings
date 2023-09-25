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
            
            Color
                .black
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
