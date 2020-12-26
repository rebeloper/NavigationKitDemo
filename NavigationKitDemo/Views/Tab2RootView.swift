//
//  Tab2RootView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI
import NavigationKit

extension EnvironmentValues {
    public var rootNavigation3: Binding<Bool>? {
        get { self[RootNavigationKey.self] }
        set { self[RootNavigationKey.self] = newValue }
    }
    
}

struct Tab2RootView: View {
    
    @State var isRootNavigationActive3 = false
    @Environment(\.rootNavigation3) var rootNavigation3
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 12) {
                Text("Present Second View").presents(Tab2SecondView())
                Text("Present Second View (not swipeablbe)").presents(Tab2SecondView(), allowsSwipeToDismiss: false)
                Text("Present Second View with onDismiss callback").presents(Tab2SecondView(), onDismiss: {
                    print("Did dismiss SecondView")
                })
                Text("Push Second View as Root").pushesAsRoot(Tab2SecondView(), isActive: $isRootNavigationActive3)
                Text("Present Second View in NavigationView").presentsNavigationView(
                    Tab1SecondView().navigationBarTitleDisplayMode(.inline).disableSwipeToDismiss()
                )
                Spacer()
            }
            .navigationTitle("Tab 2 - Root View")
        }
        .environment(\.rootNavigation3, $isRootNavigationActive3)
    }
}

struct Tab2RootView_Previews: PreviewProvider {
    static var previews: some View {
        Tab2RootView()
    }
}
