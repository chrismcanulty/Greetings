//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Chris McAnulty on 2023-09-28.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        
        VStack(alignment: .leading) {
                GreetingsTextView(subtitle: $subtitle)
                
                RotatableCircleView()
            
                Spacer()
        } .padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
