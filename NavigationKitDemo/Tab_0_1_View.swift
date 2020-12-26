//
//  Tab_0_1_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI

struct Tab_0_1_View: View {
    
    @EnvironmentObject private var navigationStack: NavigationStack
    
    var body: some View {
        VStack {
            Button {
                navigationStack.push(Tab_0_3_View())
            } label: {
                Text("Push to Tab_0_3_View")
            }
            Spacer()
        }
        .inlineNavigationBar(titleView:
                    Text("Tab_0_1_View").bold(),
                leadingView:
                    Button {
                        navigationStack.pop()
                    } label: {
                        Label("Back", systemImage: "chevron.backward")
                    },
                trailingView:
                    Button {
                        navigationStack.push(Tab_0_2_View())
                    } label: {
                        Text("Next")
                    },
                backgroundView:
                    Color(.tertiarySystemBackground).edgesIgnoringSafeArea(.top)
        )
    }
}

struct Tab_0_1_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_0_1_View()
    }
}
