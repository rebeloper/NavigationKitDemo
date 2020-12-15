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
    
    @State var selectedTab = 1
    
    var body: some Scene {
        WindowGroup {
            
//            Tab2RootView()//.rootable()
            
//            NavigationView {
//                Tab1RootView()
//            }//.rootable()
            
            TabView(selection: $selectedTab) {
//                NavigationView {
//                    Tab1RootView()
//                }
//                .tabItem {
//                    VStack {
//                        Image(systemName: "1.circle.fill")
//                        Text("First Tab")
//                    }
//                }.tag(0).rootable(firstTabNavigation)
//
//                NavigationView {
//                    Tab2RootView()
//                }
//                .tabItem {
//                    Image(systemName: "2.circle.fill")
//                    Text("Second Tab")
//                }.tag(1).rootable(secondTabNavigation)

                TabBarView(rootView: {
                    Tab1RootView()
                }, tabItemView: {
                    VStack {
                        Image(systemName: "1.circle.fill")
                        Text("First Tab")
                    }
                }, navigation: firstTabNavigation, tabTag: 0)

                TabBarView(rootView: {
                    Tab2RootView()
                }, tabItemView: {
                    VStack {
                        Image(systemName: "2.circle.fill")
                        Text("Second Tab")
                    }
                }, navigation: secondTabNavigation, tabTag: 1)

            }.onTapGesture(count: 2) {
                switch selectedTab {
                case 0:
                    firstTabNavigation.isPushRootActive = false
                case 1:
                    secondTabNavigation.isPushRootActive = false
                default:
                    print("No such selected tab: \(selectedTab)")
                }
            }
            
        }
    }
}

