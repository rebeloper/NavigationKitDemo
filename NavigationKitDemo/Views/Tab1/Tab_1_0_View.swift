//
//  Tab_1_0_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI
import NavigationKit

struct Tab_1_0_View: View {
    
    @State private var navigationForTab_0_0_View = false
    @State private var navigationForTab_1_1_View = false
    
    var body: some View {
        VStack {
            Color(.systemTeal)
            
            Sheet(isPresented: $navigationForTab_0_0_View) {
                NavigationKitView {
                    Tab_0_0_View()
                }
            }
            
            Sheet(isPresented: $navigationForTab_1_1_View) {
                NavigationKitView {
                    Tab_1_1_View(rootView: $navigationForTab_1_1_View)
                }
            }
        }
        .largeNavigationBar(titleView:
                    Text("Tab_1_0_View").bold().lineLimit(1),
                leadingView:
                    Button {
                        navigationForTab_0_0_View.present()
                    } label: {
                        Text("Present Navigation")
                    },
                trailingView:
                    Button {
                        navigationForTab_1_1_View.present()
                    } label: {
                        Text("Present")
                    },
                backgroundView:
                    Color(.tertiarySystemBackground).edgesIgnoringSafeArea(.top)
        )
    }
}

struct Tab_1_0_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_1_0_View()
    }
}
