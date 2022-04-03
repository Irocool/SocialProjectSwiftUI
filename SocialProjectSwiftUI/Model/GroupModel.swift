//
//  GroupModel.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 31.03.2022.
//

import Foundation

struct GroupModel: Identifiable {
    var id = UUID()
    var groupName: String
    var groupImageName: String
}

struct GroupList {
    static let groups = [
        GroupModel(groupName: "Garden group", groupImageName: "group1"),
        GroupModel(groupName: "IT", groupImageName: "group1"),
        GroupModel(groupName: "Ivanovo group", groupImageName: "group1")
        
    ]
}
