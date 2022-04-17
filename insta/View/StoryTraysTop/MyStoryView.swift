import SwiftUI

struct MyStoryView: View {
    public var items: [MyStoryItemView]
    
    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(self.items, id: \.id) {item in
                    item
                }
            }
            .padding(.vertical, 5)
        }
    }
}
