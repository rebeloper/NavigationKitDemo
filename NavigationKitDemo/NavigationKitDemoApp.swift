//
//  NavigationKitDemoApp.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 14.12.2020.
//

import SwiftUI
import NavigationKit

@main
struct NavigationKitDemoApp: App {
    
    let firstTabNavigation = Navigation()
    let secondTabNavigation = Navigation()
    
    @State var selectedTab: Tab = .second
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                Tab1RootView().tabItem {
                    VStack {
                        Image(systemName: "1.circle.fill")
                        Text("First Tab")
                    }
                }.tag(Tab.first).rootable(firstTabNavigation)
                
                Tab2RootView().tabItem {
                    Image(systemName: "2.circle.fill")
                    Text("Second Tab")
                }.tag(Tab.second).rootable(secondTabNavigation)
            }.onTapGesture(count: 2) {
                switch selectedTab {
                case .first:
                    firstTabNavigation.isPushRootActive = false
                case .second:
                    secondTabNavigation.isPushRootActive = false
                }
            }
            
        }
    }
}

extension NavigationKitDemoApp {
    enum Tab: Hashable {
        case first
        case second
    }
}
