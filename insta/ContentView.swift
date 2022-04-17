//
//  ContentView.swift
//  insta
//
//  Created by Данил Костин on 10.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var activeScreen: Int = -1
    
    public var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                BaseNavigationView(screens: [
                    ScreenView(view: AnyView(HomeScreen())),
                    ScreenView(view: AnyView(HomeScreen())),
                    ScreenView(view: AnyView(HomeScreen())),
                    ScreenView(view: AnyView(HomeScreen()))
                ], activeScreen: $activeScreen)
                
                Spacer()
                BaseNavigationBarView(items: [
                    BaseNavigationBarItemView(imageName: "home"),
                    BaseNavigationBarItemView(imageName: "search"),
                    BaseNavigationBarItemView(imageName: "reels"),
                    BaseNavigationBarItemView(imageName: "shop")
                ], activeIndex: $activeScreen)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro Max")
    }
}
