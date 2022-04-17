import SwiftUI

struct ProfileStrotyTraysItemView: View, Identifiable {
    public var id = UUID()
    public var image: String
    
    public var body: some View {
        Image(self.image).resizable()
    }
}
