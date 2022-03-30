//
//  ViewModifiers.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuluigina on 27.03.2022.
//

import SwiftUI

struct ButtonsViewModifier: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
    
            .background(Ellipse()
            
            .fill(Color.white)
            .aspectRatio(0.75, contentMode: .fit)
            .shadow(color: shadowColor, radius: shadowRadius))
           
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
    let shadowColor: Color

    func body(content: Content) -> some View {
        content
            .padding(.all, 5)
            .clipShape(Circle())
            .shadow(color: shadowColor, radius: 5, x: 3, y: 0)
    }
}
