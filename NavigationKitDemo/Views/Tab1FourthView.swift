//
//  Tab1FourthView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab1FourthView: View {
    
//    @Environment(\.pushingInRoot) var pushingInRoot
    @Environment(\.rootNavigation1) var rootNavigation1
    @Environment(\.rootNavigation2) var rootNavigation2
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Dismiss").dismisses()
//            Text("Dismiss to Root").dismissesToRoot()
            Text("Dismiss to Root").onTapGesture {
                rootNavigation1?.wrappedValue.dismiss()
            }
            
            Text("Dismiss to Root 2").onTapGesture {
                rootNavigation2?.wrappedValue.dismiss()
            }
            Text("Dismiss to Root after 2 seconds").dismissesToRoot { (navigation) in
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    navigation.resume()
                }
            }
            Text("Dismiss to Root as is").dismissesAsIsToRoot()
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
