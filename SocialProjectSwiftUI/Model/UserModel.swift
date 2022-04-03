//
//  UserModel.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 30.03.2022.
//

import Foundation

struct UserModel: Identifiable {
    var id = UUID()
    let name: String
    let status: String
    let avatarImageName: String
}

struct UserList {
    static let users = [
        UserModel(name: "Ivan Petrov", status: "offline", avatarImageName: "default-profile"),
        UserModel(name: "Ivan Sorokin", status: "offline", avatarImageName: "default-profile"),
        UserModel(name: "Petr Ivanov", status: "offline", avatarImageName: "default-profile"),
        UserModel(name: "John Block", status: "offline", avatarImageName: "default-profile")
    ]
}
