import SwiftUI

struct BaseAboutView: View {
    public var username: String
    public var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(self.username)
                .font(.system(size: 13))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
            Text(self.description)
                .font(.system(size: 13))
                .fontWeight(.regular)
                .foregroundColor(.black)
        }
    }
}
