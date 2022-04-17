import SwiftUI

struct BaseNavigationBarView: View {
    private var items: [BaseNavigationBarItemView]
    private var CGRect: CGRect
    
    @Binding public var activeIndex: Int
    
    init(items: [BaseNavigationBarItemView], activeIndex: Binding<Int>) {
        self.items = items
        _activeIndex = activeIndex
        self.CGRect = UIScreen.main.bounds
    }
    
    public var body: some View {
        HStack {
            ForEach(0..<self.items.count) {index in
                Button(action: {
                    self.activeIndex = index - 1
                }) {
                    self.items[index].frame(width: self.calculateButtonWidth())
                }
            }
        }
        .padding(10)
        .border(
            width: 0.7,
            edges: [.top],
            color: Color(red: 218 / 255, green: 218 / 255, blue: 218 / 255)
        )
    }
    
    private func calculateButtonWidth() -> CGFloat {
        return CGFloat(self.CGRect.width / CGFloat(self.items.count))
    }
}
