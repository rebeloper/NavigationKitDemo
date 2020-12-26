//
//  Tab1RootView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI
import NavigationKit

extension EnvironmentValues {
    public var rootNavigation1: Binding<Bool>? {
        get { self[RootNavigationKey.self] }
        set { self[RootNavigationKey.self] = newValue }
    }
    
    public var rootNavigation2: Binding<Bool>? {
        get { self[RootNavigationKey.self] }
        set { self[RootNavigationKey.self] = newValue }
    }
}

struct Tab1RootView: View {
    
    @State var isRootNavigationActive1 = false
    @Environment(\.rootNavigation1) var rootNavigation1
    
    @State var isRootNavigationActive2 = false
    @Environment(\.rootNavigation2) var rootNavigation2
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                Text("Push Second View").pushes(Tab1SecondView()).buttonStyle(RoundedCornerButtonStyle())
                Text("Push Second View as Root").pushesAsRoot(Tab1SecondView(), isActive: $isRootNavigationActive1)
                Text("Push Second View as Root 2").pushesAsRoot(Tab2SecondView(), isActive: $isRootNavigationActive2)
                Text("Push Second View after Action").pushes(Tab1SecondView()) { (navigation) in
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
                        navigation.resume()
                    }
                }
                Text("Push Second View as is").pushesAsIs(Tab1SecondView())
                Spacer()
            }
            .navigationTitle("Tab 1 - Root View")
        }
        .environment(\.rootNavigation1, $isRootNavigationActive1)
        .environment(\.rootNavigation2, $isRootNavigationActive2)
    }
}

struct Tab1RootView_Previews: PreviewProvider {
    static var previews: some View {
        Tab1RootView()
    }
}
