//
//  Tab2RootView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab2RootView: View {
    
    @State var isRootNavigationActive = false
    @Environment(\.rootNavigation) var rootNavigation
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 12) {
                Text("Present Second View").presents(Tab2SecondView())
                Text("Present Second View (not swipeablbe)").presents(Tab2SecondView(), allowsSwipeToDismiss: false)
                Text("Present Second View with onDismiss callback").presents(Tab2SecondView(), onDismiss: {
                    print("Did dismiss SecondView")
                })
                Text("Push Second View as Root").pushesAsRoot(Tab2SecondView(), isActive: $isRootNavigationActive)
                Text("Present Second View in NavigationView").presentsNavigationView(
                    Tab1SecondView().navigationBarTitleDisplayMode(.inline).disableSwipeToDismiss()
                )
                Spacer()
            }
            .navigationTitle("Tab 2 - Root View")
        }
        .environment(\.rootNavigation, $isRootNavigationActive)
    }
}

struct Tab2RootView_Previews: PreviewProvider {
    static var previews: some View {
        Tab2RootView()
    }
}
