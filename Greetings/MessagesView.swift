
import SwiftUI

struct MessagesView: View {
    
    let messages: [DataItemModel] = [
        .init(text: LocalizedStringKey("Hello there!"), color: .myGreen),
        .init(text: LocalizedStringKey("Welcome to Swift Programming!"), color: .myGray),
        .init(text: LocalizedStringKey("Are you ready to"), color: .myYellow),
        .init(text: LocalizedStringKey("start exploring?"), color: .myRed),
        .init(text: LocalizedStringKey("Boom."), color: .myPurple)
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
    MessagesView()
}
