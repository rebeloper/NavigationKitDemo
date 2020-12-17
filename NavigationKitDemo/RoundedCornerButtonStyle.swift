//
//  RoundedCornerButtonStyle.swift
//  NavigationKitDemo
//
//  Created by Alex Nagy on 17.12.2020.
//

import SwiftUI

struct RoundedCornerButtonStyle: ButtonStyle {
    
    var font: Font = Font.system(size: 16, weight: .bold, design: .rounded)
    var padding: CGFloat = 8
    var foregroundColor: Color = .white
    var backgroundColor: Color = .green
    var cornerRadius: CGFloat = 8
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .font(font)
            .padding(8)
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
    }
}
