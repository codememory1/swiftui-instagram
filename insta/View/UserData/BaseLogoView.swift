import SwiftUI

struct BaseLogoView: View {
    public var logo: String
    
    var body: some View {
        Image(self.logo)
            .resizable()
            .frame(width: 77, height: 77)
            .clipShape(Circle())
            .overlay(
                Image("user-photo-border")
            )
    }
}

