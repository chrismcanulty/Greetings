
import SwiftUI

@main
struct GreetingsApp: App {
    @State private var language: String = "en"
    @State private var layoutDirectionString: String = LEFT_TO_RIGHT
    
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $layoutDirectionString)
        }
    }
}
