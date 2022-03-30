//
//  ViewModifier.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 12.03.2022.
//

import SwiftUI

struct ButtonsViewModifier: ViewModifier {
    var offset: CGFloat
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 30,
                                 style: .continuous)
                    .fill(.blue)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 30,
                                 style: .continuous)
                    .strokeBorder(.white)
            )
            .buttonStyle(.bordered)
            .padding(.bottom, offset)
    }
}

struct MainStackViewModifier: ViewModifier {
    var maxWidth: CGFloat
    var maxHeight: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0,
                   maxWidth: maxWidth,
                   minHeight: 0,
                   maxHeight: maxHeight,
                   alignment: .center)
            .padding(.top, 120.0)
    }
}

struct AvatarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.all, 5)
            .clipShape(Circle())
            .shadow(color: .black, radius: 5, x: 3, y: 0)
    }
}
