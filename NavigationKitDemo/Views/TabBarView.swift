////
////  TabBarView.swift
////  NavigationKitDemo
////
////  Created by Alex Nagy on 15.12.2020.
////
//
//import SwiftUI
//import NavigationKit
//
//struct TabBarView<RootView: View, TabItemView: View>: View {
//    
//    var rootView: () -> RootView
//    var tabItemView: () -> TabItemView
//    var navigation: Navigation = Navigation()
//    var tabTag: Int
//    
//    init(rootView: @escaping () -> RootView, tabItemView: @escaping () -> TabItemView, navigation: Navigation? = nil, tabTag: Int) {
//        self.rootView = rootView
//        self.tabItemView = tabItemView
//        if let navigation = navigation {
//            self.navigation = navigation
//        }
//        self.tabTag = tabTag
//    }
//    
//    var body: some View {
//        NavigationView {
//            rootView()
//        }
//        .tabItem {
//            tabItemView()
//        }.tag(tabTag).rootable(navigation)
//    }
//}
//
