//
//  Tab2ThirdView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab2ThirdView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Dismiss").dismisses()
            Text("Present Fourth View").presents(Tab2FourthView())
            Spacer()
        }
        .navigationTitle("Tab 2 - Third View")
    }
}

struct Tab2ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        Tab2ThirdView()
    }
}
