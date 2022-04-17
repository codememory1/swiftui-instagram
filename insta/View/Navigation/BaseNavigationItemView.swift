import SwiftUI

struct BaseNavigationItemView: View {
    public var icon: String
    public var activityIcon: String
    
    @Binding public var isActive: Bool

    init(icon: String, activityIcon: String, isActive: Binding<Bool> = .constant(false)) {
        self.icon = icon
        self.activityIcon = activityIcon
        _isActive = isActive
    }
    
    public var body: some View {
        Button(action: {
            self.isActive = true
        }) {
            Image(systemName: self.isActive ? self.icon : self.activityIcon)
        }
    }
}
