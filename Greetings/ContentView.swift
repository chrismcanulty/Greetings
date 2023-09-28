
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
//        .environment(\.locale, .init(identifier: "es"))
}
