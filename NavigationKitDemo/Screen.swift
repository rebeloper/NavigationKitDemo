//
//  Screen.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 26.12.2020.
//

import SwiftUI

struct Screen<Content>: View where Content: View {
    
    let content: () -> Content

    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            content()
        }
    }
}

struct Sheet<Content>: View where Content: View {
    
    @Binding var isPresented: Bool
    let content: () -> Content

    var body: some View {
        EmptyView().sheet(isPresented: $isPresented, content: {
            content()
        })
    }
}
