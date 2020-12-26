//
//  Tab2SecondView.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 15.12.2020.
//

import SwiftUI

struct Tab2SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Dismiss").dismisses()
            Text("Present Third View in NavigationView with onDismiss callback").presentsNavigationView(
                Tab1SecondView().navigationBarTitleDisplayMode(.inline).allowsSwipeToDismiss(false)
            ) {
                print("Did dismiss ThirdView")
                presentationMode.wrappedValue.dismiss()
            }
            Text("Present Third View").presents(Tab2ThirdView())
            Text("Push Tab 1 Fourth View").pushes(Tab1FourthView())
            Spacer()
        }
        .navigationTitle("Tab 2 - Second View")
    }
}

struct Tab2SecondView_Previews: PreviewProvider {
    static var previews: some View {
        Tab2SecondView()
    }
}
