//
//  Tab_1_3_View.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI

struct Tab_1_3_View: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var rootView: Bool
    @Binding var secondRootView: Bool
    @Binding var thirdRootView: Bool
    
    var body: some View {
        VStack {
            Color(.systemRed).edgesIgnoringSafeArea(.all)
        }
        .largeNavigationBar(titleView:
                    Text("Tab_1_3_View").bold().lineLimit(1),
                leadingView:
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Dismiss")
                    },
                trailingView:
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now()) {
                            thirdRootView.dismiss()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                            secondRootView.dismiss()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            rootView.dismiss()
                        }
                    } label: {
                        Text("Dismiss to Root")
                    },
                backgroundView:
                    Color(.tertiarySystemBackground).edgesIgnoringSafeArea(.top)
        )
    }
}

struct Tab_1_3_View_Previews: PreviewProvider {
    static var previews: some View {
        Tab_1_3_View(rootView: .constant(false), secondRootView: .constant(false), thirdRootView: .constant(false))
    }
}
