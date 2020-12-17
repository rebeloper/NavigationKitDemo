//
//  Tab1SecondView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab1SecondView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Dismiss").dismisses()
            Text("Dismiss NavigationView Sheet").dismissesNavigationViewSheet()
            Text("Push Third View").pushes(Tab1ThirdView()).asButton()
            Text("Push Third View as Root").pushesAsRoot(Tab1ThirdView()) // only one view is allowed be the root of the navigation stack; if you comment in this line than you have to comment out the "pushesAsRoot" line in RootView; unless you are presnting Tab1SecondView in NavigationView with "presentsNavigationView" - in this case this is the root view
            Spacer()
        }
        .navigationTitle("Tab 1 - Second View")
    }
}

struct Tab1SecondView_Previews: PreviewProvider {
    static var previews: some View {
        Tab1SecondView()
    }
}
