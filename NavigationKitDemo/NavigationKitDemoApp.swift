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
    
    @State var selectedTab = 0
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                
                NavigationKitView {
                    Tab_0_0_View()
                }
                .tabItem {
                    VStack {
                        Image(systemName: "0.circle.fill")
                        Text("Zero")
                    }
                }.tag(0)
                
//                NavigationKitView(transitionType: NavigationTransition.custom(.scale), easing: Animation.easeInOut(duration: 0.5), rootView: {
//                    Tab_1_0_View()
//                })
                NavigationKitView {
                    Tab_1_0_View()
                }
                .tabItem {
                    Image(systemName: "1.circle.fill")
                    Text("One")
                }.tag(1)
                
            }
            
        }
    }
}

