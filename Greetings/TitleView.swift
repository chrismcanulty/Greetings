
import SwiftUI

/// This is the title view of the app which
/// displays a title, a subtitle, which randomly
/// changes on tap and we have a colorful
/// disc which rotates on tap
struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, angle: .zero)
    }
    
    @State private var subtitle: LocalizedStringKey = LocalizedStringKey("Exploring iOS Programming")
    let subtitles: [LocalizedStringKey] = [
        LocalizedStringKey("Exploring iOS Programming"),
        LocalizedStringKey("Learning how to bake"),
        LocalizedStringKey("Programming recipes"),
        LocalizedStringKey("A quest for knowledge"),
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                // Title
                VStack(alignment: .leading, spacing: 0) {
                    Text(LocalizedStringKey("Greetings"))
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text( subtitle )
                        .font(.headline)
                        .fontWeight(.thin)
                }
                .onTapGesture {
                    // Change subtitle
                    subtitle = subtitles
                        .randomElement() ?? LocalizedStringKey("Exploring iOS Programming")
                }
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(angularGradient, lineWidth: lineWidth)
                .rotationEffect( angle )
                .frame(width: diameter, height: diameter, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
        .padding()
}
