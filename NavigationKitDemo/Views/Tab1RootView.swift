//
//  Tab1RootView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab1RootView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Push Second View").pushes(Tab1SecondView()).asButton().buttonStyle(RoundedCornerButtonStyle())
            Text("Push Second View as Root").pushesAsRoot(Tab1SecondView())
            Text("Push Second View after Action").pushes(Tab1SecondView()) { (token) in
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
                    token.navigate()
                }
            }
            Text("Push Second View as Button").pushesAsIs(Tab1SecondView())
            Spacer()
        }
        .navigationTitle("Tab 1 - Root View")
    }
}

struct Tab1RootView_Previews: PreviewProvider {
    static var previews: some View {
        Tab1RootView()
    }
}
