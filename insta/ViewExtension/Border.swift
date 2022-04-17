import SwiftUI

extension View {
    public func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        return overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
