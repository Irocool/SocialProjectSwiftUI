//
//  UserRowView.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 27.03.2022.
//

import SwiftUI

struct UserRowView: View {
    
// MARK: - Properties
    
    var users: [UserModel] = UserList.users

// MARK: - Body
    var body: some View {
        
        NavigationView {
            List(users, id: \.id) { user in
                HStack {
            
                    AvatarImage {
                        Image(user.avatarImageName)
                            .resizable()
                    }
            
                VStack(alignment: .leading) {
                
                    Text("\(user.name)")
                        .font(.title2)
               
                    Text("\(user.status)")
                        .font(.system(size: 12))
                }
                Spacer()
               }
           }

            .navigationBarHidden(false)
                .navigationBarTitle("friends", displayMode: .inline)
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
