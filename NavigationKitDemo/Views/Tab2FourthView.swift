//
//  Tab2FourthView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab2FourthView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Dismiss").dismisses()
            Spacer()
        }
        .navigationTitle("Tab 2 - Fourth View")
    }
}

struct Tab2FourthView_Previews: PreviewProvider {
    static var previews: some View {
        Tab2FourthView()
    }
}
