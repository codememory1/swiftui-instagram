import SwiftUI

struct TabBarView: View {
    public var items: [TabItemView]
    @Binding private var activeTab: Int
    
    init(items: [TabItemView], activeTab: Binding<Int> = .constant(0)) {
        self.items = items
        _activeTab = activeTab
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<self.items.count) {index in
                Button(action: {
                    self.activeTab = index
                }) {
                    self.items[index]
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.vertical, 13)
                .opacity(self.activeTab == index ? 1 : 0.3)
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro Max")
    }
}

