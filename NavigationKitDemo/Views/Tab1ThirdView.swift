//
//  Tab1ThirdView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab1ThirdView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Dismiss as is").dismissesAsIs()
            Text("Push Fourth View").pushes(Tab1FourthView())
            Spacer()
        }
        .navigationTitle("Tab 1 - Third View")
    }
}

struct Tab1ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        Tab1ThirdView()
    }
}
