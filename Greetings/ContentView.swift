//
//  ContentView.swift
//  Greetings
//
//  Created by Chris McAnulty on 2023-09-23.
//

import SwiftUI

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
            
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
