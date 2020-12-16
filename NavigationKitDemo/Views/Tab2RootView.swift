//
//  Tab2RootView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab2RootView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Present Second View").presents(Tab2SecondView())
            Text("Present Second View (not swipeablbe)").presents(Tab2SecondView(), allowsSwipeToDismiss: false)
            Text("Present Second View with onDismiss callback").presents(Tab2SecondView(), onDismiss: {
                print("Did dismiss SecondView")
            })
            Text("Push Second View as Root").pushesAsRoot(Tab2SecondView())
            Text("Present Second View in NavigationView").presentsNavigationView(
                Tab1SecondView().navigationBarTitleDisplayMode(.inline).disableSwipeToDismiss()
            )
            Text("Present Second View in NavigationView with onDismiss callback").presentsNavigationView(
                Tab1SecondView().navigationBarTitleDisplayMode(.inline).allowsSwipeToDismiss(false)
            ) {
                print("Did dismiss SecondView")
            }
            Spacer()
        }
        .navigationTitle("Tab 2 - Root View")
    }
}

struct Tab2RootView_Previews: PreviewProvider {
    static var previews: some View {
        Tab2RootView()
    }
}
