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
            
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
