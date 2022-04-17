import SwiftUI

struct BaseNavigationBarItemView: View, Identifiable {
    public var id = UUID()
    public var imageName: String
    
    public var body: some View {
        Image(self.imageName)
            .resizable()
            .frame(width: 21, height: 21)
    }
}
