//
//  Tab_0_3_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI

struct Tab_0_3_View: View {
    @EnvironmentObject private var navigationStack: NavigationStack
    
    var body: some View {
        VStack(spacing: 12) {
            Button {
                navigationStack.pop(to: .root)
            } label: {
                Text("Pop to Root")
            }

            Button {
                navigationStack.pop(to: .view(withId: "Tab_0_1_View"))
            } label: {
                Text("Pop to Tab_0_1_View")
            }
            
            Spacer()
        }
        .largeNavigationBar(titleView:
                    Text("Tab_0_3_View").bold(),
                leadingView:
                    Button {
                        navigationStack.pop()
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
