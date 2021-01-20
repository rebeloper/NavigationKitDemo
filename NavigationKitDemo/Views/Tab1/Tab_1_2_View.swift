//
//  Tab_1_2_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI
import NavigationKit

struct Tab_1_2_View: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var navigationForTab_1_3_View = false
    
    @Binding var rootView: Bool
    @Binding var secondRootView: Bool
    
    var body: some View {
        VStack {
            Button {
                navigationForTab_1_3_View.present()
            } label: {
                Text("Present")
            }
            Spacer()
            
            Sheet(isPresented: $navigationForTab_1_3_View) {
                NavigationKitView {
                    Tab_1_3_View(rootView: $rootView, secondRootView: $secondRootView, thirdRootView: $navigationForTab_1_3_View).disableSwipeToDismiss()
                }
            }
        }
        .padding()
        .largeNavigationBar(titleView:
                    Text("Tab_1_2_View").bold().lineLimit(1),
                leadingView:
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Dismiss")
                    },
                trailingView:
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now()) {
                            secondRootView.dismiss()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                            rootView.dismiss()
                        }
                    } label: {
                        Text("Dismiss to Root")
                    },
                backgroundView:
                    Color(.secondarySystemBackground).edgesIgnoringSafeArea(.top)
        )
    }
}

struct Tab_1_2_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_1_2_View(rootView: .constant(false), secondRootView: .constant(false))
    }
}
