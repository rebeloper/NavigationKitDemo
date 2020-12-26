//
//  Tab1FourthView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab1FourthView: View {
    
//    @Environment(\.pushingInRoot) var pushingInRoot
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Dismiss").dismisses()
            Text("Dismiss to Root").dismissesToRoot()
//            Text("Dismiss To Root").onTapGesture {
//                pushingInRoot?.wrappedValue.dismiss()
//            }
            Spacer()
        }
        .navigationTitle("Tab 1 - Fourth View")
    }
}

struct Tab1FourthView_Previews: PreviewProvider {
    static var previews: some View {
        Tab1FourthView()
    }
}
