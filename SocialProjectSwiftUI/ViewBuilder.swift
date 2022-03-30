//
//  SwiftUIView.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 12.03.2022.
//

import SwiftUI

struct AvatarImage: View {
    var content: Image
    
    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }
    
    var body: some View {
        content
            .resizable()
            .frame(maxWidth: 50, maxHeight: 50)
            .modifier(AvatarModifier())
    }
}


