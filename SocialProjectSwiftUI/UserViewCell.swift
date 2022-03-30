//
//  UserViewCell.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 12.03.2022.
//

import SwiftUI

struct UserViewCell: View {
    // MARK: - Properties
        
        let name: String = "Irina Kuligina"
        let status: String = "offline"
        let avatarName: String = "default-profile"

    // MARK: - Body
        var body: some View {
            HStack {
                
                AvatarImage {
                    Image(avatarName)
                }
                
                VStack(alignment: .leading) {
                    
                    Text("\(name)")
                        .font(.title2)
                   
                    Text("\(status)")
                        .font(.system(size: 12))
                }
                Spacer()
            }
    //        .border(Color.gray)
        }
    

    // MARK: - ViewBuilders


    //MARK: - View Modifiers
}
