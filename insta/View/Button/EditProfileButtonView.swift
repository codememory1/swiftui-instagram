import SwiftUI

struct EditProfileButtonView: View {
    @Binding public var isClick: Bool
    
    init(isClick: Binding<Bool> = .constant(false)) {
        _isClick = isClick
    }
    
    var body: some View {
        Button(action: {}) {
            Text("Edit Profile")
                .font(.system(size: 13))
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity, maxHeight: 30)
        .padding(.vertical, 7)
        .border(
            Color(red: 203 / 255, green: 203 / 255, blue: 203 / 255),
            width: 0.7
        )
        .cornerRadius(3)
    }
}
