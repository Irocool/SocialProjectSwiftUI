//
//  GroupRowView.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 27.03.2022.
//

import SwiftUI

struct GroupRowView: View {

// MARK: - Properties
    
    public var groups: [GroupModel] = GroupList.groups
    
// MARK: - Body
    
    var body: some View {
        NavigationView {
            List(groups, id: \.id) { group in
                HStack {
                    AvatarImage {
                        Image(group.groupImageName)
                            
                    }
                    Text("\(group.groupName)")
                        .font(.title2)
                    Spacer()
                }

            }
        }
        .navigationTitle("groups")
    }
}
