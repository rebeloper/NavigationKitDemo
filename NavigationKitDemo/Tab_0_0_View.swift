//
//  Tab_0_0_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI

struct Tab_0_0_View: View {
    
    @EnvironmentObject private var navigationStack: NavigationStack
    
    var body: some View {
        VStack {
            Color(.systemRed).edgesIgnoringSafeArea(.all)
        }
        .largeNavigationBar(titleView:
                    Text("Tab_0_0_View").bold().lineLimit(1),
                leadingView:
                    EmptyView(),
                trailingView:
                    Button {
                        navigationStack.push(Tab_0_1_View(), withId: "Tab_0_1_View")
                    } label: {
                        Text("Next")
                    },
                backgroundView:
                    Color(.tertiarySystemBackground).edgesIgnoringSafeArea(.top)
        )

    }
}

struct Tab_0_0_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_0_0_View()
    }
}
