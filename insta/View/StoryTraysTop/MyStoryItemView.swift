import SwiftUI

struct MyStoryItemView: View, Identifiable {
    public var id = UUID()
    public var image: String
    public var name: String
    
    public var body: some View {
        Button(action: {}) {
            VStack {
                Image(self.image)
                    .resizable()
                    .frame(width: 54, height: 54)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color(red: 220 / 255, green: 220 / 255, blue: 220 / 255))
                            .frame(width: 59, height: 59)
                    )
                
                Text(self.name)
                    .font(.system(size: 11))
                    .foregroundColor(.black)
                    .padding(.top, 4)
            }
        }
    }
}
