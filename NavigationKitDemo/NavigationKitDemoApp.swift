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
    
    @State var selectedTab = 1
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                Tab1RootView()
                .tabItem {
                    VStack {
                        Image(systemName: "1.circle.fill")
                        Text("First Tab")
                    }
                }.tag(0)

                Tab2RootView()
                .tabItem {
                    Image(systemName: "2.circle.fill")
                    Text("Second Tab")
                }.tag(1)
            }
            
        }
    }
}

