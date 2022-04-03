//
//  MenuView.swift
//  SocialProjectSwiftUI
//
//  Created by Пользователь on 03.04.2022.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        TabView{
            UserRowView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Users")
                }
                //Text("Another Tab")
            GroupRowView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Group")
                }
            NewsView()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("News")
                }
            }
        }
}

//struct MenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuView()
//            .environmentObject(UserRowView())
//    }
//}
