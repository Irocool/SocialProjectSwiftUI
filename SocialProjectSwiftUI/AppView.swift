//
//  AppView.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 30.03.2022.
//

import SwiftUI

struct AppView: View {
    
    @State private var shouldShowUserView: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginScreenView(showUserView: $shouldShowUserView)
                
                NavigationLink(
                    destination: UserRowView(),
                    isActive: $shouldShowUserView,
                    label: {
                        EmptyView()
                    })
                    
            }
        }
    }
}
