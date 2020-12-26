//
//  Tab_1_1_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI
import NavigationKit

struct Tab_1_1_View: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var navigationForTab_1_2_View = false
    
    @Binding var rootView: Bool
    
    var body: some View {
        VStack {
            Color(.systemRed).edgesIgnoringSafeArea(.all)
            
            FullScreenSheet(isPresented: $navigationForTab_1_2_View) {
                NavigationKitView {
                    Tab_1_2_View(rootView: $rootView, secondRootView: $navigationForTab_1_2_View)
                }
            }
            
        }
        .largeNavigationBar(titleView:
                    Text("Tab_1_1_View").bold().lineLimit(1),
                leadingView:
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Dismiss")
                    },
                trailingView:
                    Button {
                        navigationForTab_1_2_View.present()
                    } label: {
                        Text("Present")
                    },
                backgroundView:
                    Color(.tertiarySystemBackground).edgesIgnoringSafeArea(.top)
        )
    }
}

struct Tab_1_1_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_1_1_View(rootView: .constant(false))
    }
}
