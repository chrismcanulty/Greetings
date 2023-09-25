
import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // Title
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Exploring iOS Programming")
                    .font(.headline)
                    .fontWeight(.thin)
            }
        }
    }
}

#Preview {
    TitleView()
}
