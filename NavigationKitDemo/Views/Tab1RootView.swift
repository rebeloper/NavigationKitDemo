//
//  Tab1RootView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab1RootView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                Text("Push Second View").pushes(Tab1SecondView())
                Text("Push Second View as Root").pushesAsRoot(Tab1SecondView())
                Spacer()
            }
            .navigationTitle("Tab 1 - Root View")
        }
    }
}

struct Tab1RootView_Previews: PreviewProvider {
    static var previews: some View {
        Tab1RootView()
    }
}
