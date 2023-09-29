
import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button("English") {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                    print("English")
                }
                Button("Español") {
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("العربية") {
                    language = "ar"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
