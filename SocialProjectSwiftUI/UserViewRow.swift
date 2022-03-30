//
//  UserViewRow.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 27.03.2022.
//

import SwiftUI

struct UserCellView: View {
    
// MARK: - Properties
    
    let name: String = "Stan Marsh"
    let status: String = "offline"
    let avatarName: String = "StanMarsh"

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
    }
}

// MARK: - ViewBuilders


//MARK: - View Modifiers


// MARK: - Previews
//struct UserCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserCellView()
//    }
//}
