import SwiftUI

struct BaseUserHeaderView: View {
    public var username: String
    
    var body: some View {
        HStack {
            HStack {
                Button(action: {}) {
                    HStack {
                        Text(self.username)
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Image(systemName: "chevron.down")
                            .font(.system(size: 16))
                            .foregroundColor(.black)
                            .padding(.leading, 8)
                    }
                }
            }
            
            Spacer()
            
            HStack(spacing: 24) {
                Button(action: {}) {
                    Image("add")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                Button(action: {}) {
                    Image("burger")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
            }
        }
        .padding(.bottom, 10)
    }
}
