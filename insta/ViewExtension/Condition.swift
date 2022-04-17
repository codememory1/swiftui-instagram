import SwiftUI

extension View {
    @ViewBuilder public func condition<Content: View>(_ condition: @autoclosure () -> Bool, view: (Self) -> Content) -> some View {
        if condition() {
            view(self)
        } else {
            self
        }
    }
}
