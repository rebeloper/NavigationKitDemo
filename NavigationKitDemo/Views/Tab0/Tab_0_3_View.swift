//
//  Tab_0_3_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI
import NavigationKit

struct Tab_0_3_View: View {
    @EnvironmentObject private var navigation: Navigation
    
    var body: some View {
        VStack(spacing: 12) {
            Button {
                navigation.pop(to: .root)
            } label: {
                Text("Pop to Root")
            }

            Button {
                navigation.pop(to: .view(withId: "Tab_0_1_View"))
            } label: {
                Text("Pop to Tab_0_1_View")
            }
            
            Spacer()
        }
        .largeNavigationBar(titleView:
                    Text("Tab_0_3_View").bold(),
                leadingView:
                    Button {
                        navigation.pop()
                    } label: {
                        Label("Back", systemImage: "chevron.backward")
                    },
                trailingView:
                    EmptyView(),
                backgroundView:
                    Color(.tertiarySystemBackground).edgesIgnoringSafeArea(.top)
        )
    }
}

struct Tab_0_3_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_0_3_View()
    }
}
