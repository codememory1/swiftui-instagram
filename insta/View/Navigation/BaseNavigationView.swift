import SwiftUI

struct BaseNavigationView: View {
    private var screens: [ScreenView]
    private var CGRect: CGRect
    
    @Binding private var activeScreen: Int
    
    init(screens: [ScreenView], activeScreen: Binding<Int>) {
        self.screens = screens
        self.CGRect = UIScreen.main.bounds
        _activeScreen = activeScreen
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            ForEach(self.screens, id: \.id) {screen in
                screen.frame(width: self.CGRect.width)
            }
        }
        .frame(width: self.CGRect.width * CGFloat(screens.count))
        .offset(x: self.calculateScreenOffset())
        .animation(.easeInOut, value: activeScreen)
    }
    
    private func calculateScreenOffset() -> CGFloat {
        let halfScreen = self.CGRect.width / 2;
        let widthWithActiveScreen = self.CGRect.width * CGFloat(self.activeScreen)
        
        return self.CGRect.width - (widthWithActiveScreen) - halfScreen
    }
}

struct BaseNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
