//
//  SecondView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 14.12.2020.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Dismiss").dismisses()
            Text("Push Third View").pushes(ThirdView())
//            Text("Push Third View as Root").pushesAsRoot(ThirdView()) // only one view is allowed be the root of the navigation stack; if you comment in this line than you have to comment out the "pushesAsRoot" line in RootView
            Text("Present Third View").presents(ThirdView())
            Spacer()
        }
        .navigationTitle("Second View")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
