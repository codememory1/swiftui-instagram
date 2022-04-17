import SwiftUI

struct ProfileStoryTraysView: View {
    private var items: [ProfileStrotyTraysItemView]
    private var itemsGrid = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    init(items: [ProfileStrotyTraysItemView]) {
        self.items = items
    }
    
    public var body: some View {
        LazyVGrid(columns: self.itemsGrid, spacing: 0) {
            ForEach(0..<self.items.count) {index in
                self.items[index].border(width: 1, edges: [.leading, .trailing, .bottom], color: .white)
            }
        }
    }
}
