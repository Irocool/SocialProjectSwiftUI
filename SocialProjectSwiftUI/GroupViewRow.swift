//
//  GroupViewRow.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 27.03.2022.
//

import SwiftUI

struct CommunityCellView: View {

// MARK: - Properties
    
    let name: String = "Earn your first million"
    let avatarName: String = "group3"

// MARK: - Body
    
    var body: some View {
        HStack {
            
            AvatarImage {
                Image(avatarName)
            }
            
            Text("\(name)")
                .font(.title2)
            
            Spacer()
        }
//        .border(Color.gray)
    }
}
