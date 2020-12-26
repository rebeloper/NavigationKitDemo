//
//  Tab_0_0_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI
import NavigationKit

struct Tab_0_0_View: View {
    
    @EnvironmentObject private var navigation: Navigation
    @ObservedObject private var viewModel = Tab_0_0_ViewModel()
    
    var body: some View {
        VStack {
            Button {
                self.viewModel.fetchData { (result) in
                    switch result {
                    case .success(let finished):
                        if finished {
                            navigation.push(Tab_0_2_View())
                        } else {
                            print("Something went wrong")
                        }
                    case .failure(let err):
                        print(err.localizedDescription)
                    }
                }
            } label: {
                Text("Push after model operation")
            }
            Spacer()
        }
        .padding()
        .largeNavigationBar(titleView:
                    Text("Tab_0_0_View").bold().lineLimit(1),
                leadingView:
                    EmptyView(),
                trailingView:
                    Button {
                        navigation.push(Tab_0_1_View(), withId: "Tab_0_1_View")
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
