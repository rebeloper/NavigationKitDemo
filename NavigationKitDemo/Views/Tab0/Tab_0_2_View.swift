//
//  Tab_0_2_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI
import NavigationKit

struct Tab_0_2_View: View {
    
    @EnvironmentObject private var navigation: Navigation
    
    var body: some View {
        VStack {
            Color(.systemTeal)
        }
        .largeNavigationBar(titleView:
                    Text("Tab_0_2_View").bold(),
                leadingView:
                    Button {
                        navigation.pop()
                    } label: {
                        Label("Back", systemImage: "chevron.backward")
                    },
                trailingView:
                    Button {
                        navigation.push(Tab_0_3_View())
                    } label: {
                        Text("Next")
                    },
                backgroundView:
                    Color(.tertiarySystemBackground).edgesIgnoringSafeArea(.top)
        )
    }
}

struct Tab_0_2_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_0_2_View()
    }
}
