//
//  ContentView.swift
//  Greetings
//
//  Created by Chris McAnulty on 2023-09-23.
//

import SwiftUI

struct DataItemModel {
    let text: String
    let color: Color
}

struct ContentView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello there!", color: .green),
        .init(text: "Welcome to Swift Programming!", color: .gray),
        .init(text: "Are you ready to", color: .yellow),
        .init(text: "start exploring?", color: .red),
        .init(text: "Boom.", color: .purple)
        
    ]
    var body: some View {
        
        VStack(alignment: .leading) {
            
            TextView(text: messages[0].text, color: messages[0].color)
            TextView(text: messages[1].text, color: messages[1].color)
            TextView(text: messages[2].text, color: messages[2].color)
            TextView(text: messages[3].text, color: messages[3].color)
            TextView(text: messages[4].text, color: messages[4].color)
            
        }
    }
}

#Preview {
    ContentView()
}
