import SwiftUI

struct BaseStatisticItemView: View {
    public var name: String
    public var value: CGFloat
    
    var body: some View {
        VStack {
            Text("\(NSString(format: "%.3f", self.value))")
                .font(.system(size: 16))
                .fontWeight(.bold)
                .foregroundColor(.black)
            Text(self.name)
                .font(.system(size: 13))
                .foregroundColor(.black)
        }
    }
}
