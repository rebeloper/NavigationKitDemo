//
//  RootView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 14.12.2020.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                Text("Push Second View").pushes(SecondView())
                Text("Push Second View as Root").pushesAsRoot(SecondView())
                Text("Present Second View").presents(SecondView())
                Text("Present Second View with onDismiss callback").presents(SecondView(), onDismiss: {
                    print("Did dismiss SecondView")
                })
                Text("Present Second View in NavigationView").presents(NavigationView { SecondView() })
                Spacer()
            }
            .navigationTitle("Root View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
