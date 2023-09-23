//
//  TextView.swift
//  Greetings
//
//  Created by Chris McAnulty on 2023-09-23.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color .opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .green)
        TextView(text: "Hummus", color: .blue)
    }
}
