//
//  AppView.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 30.03.2022.
//

import SwiftUI

struct AppView: View {
    
    @State private var shouldShowMenuView: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginScreenView(showUserView: $shouldShowMenuView)
                
                NavigationLink(
                    destination: MenuView(),
                    isActive: $shouldShowMenuView,
                    label: {
                        EmptyView()
                    })
                    
            }
        }
    }
}
