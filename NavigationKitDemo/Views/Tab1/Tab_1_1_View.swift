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
    @State private var navigationForTab_1_2_View_onDismiss = false
    
    @Binding var rootView: Bool
    
    var body: some View {
        VStack {
            Button {
                navigationForTab_1_2_View_onDismiss.present()
            } label: {
                Text("Present with onDismiss callback")
            }
            Spacer()
            
            FullScreenSheet(isPresented: $navigationForTab_1_2_View) {
                NavigationKitView {
                    Tab_1_2_View(rootView: $rootView, secondRootView: $navigationForTab_1_2_View)
                }
            }
            
            FullScreenSheet(isPresented: $navigationForTab_1_2_View_onDismiss) {
                print("Dismissed FullScreenSheet. Do something here.")
            } content: {
                NavigationKitView {
                    Tab_1_2_View(rootView: $rootView, secondRootView: $navigationForTab_1_2_View_onDismiss)
                }
            }
        }
        .padding()
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
                    Color(.secondarySystemBackground).edgesIgnoringSafeArea(.top)
        )
    }
}

struct Tab_1_1_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_1_1_View(rootView: .constant(false))
    }
}
