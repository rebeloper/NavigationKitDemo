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
    var body: some Scene {
        WindowGroup {
            TabView {
                RootView().tabItem {
                    Image(systemName: "tv.fill")
                    Text("First Tab")
                }.rootable()
                
                RootView().tabItem {
                    Image(systemName: "tv.fill")
                    Text("Second Tab")
                }.rootable()
            }
            
        }
    }
}
