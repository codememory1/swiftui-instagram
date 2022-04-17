import SwiftUI

struct TabItemView: View, Identifiable {
    public var id = UUID()
    public var image: String

    public var body: some View {
        Image(self.image)
            .resizable()
            .frame(width: 16, height: 16)
    }
}
