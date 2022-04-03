//
//  DetailNewsView.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 02.04.2022.
//

import SwiftUI

struct DetailNews: View {
    var detailNew: NewsModel
    var body: some View {
        NavigationView {
            VStack {
                Image(detailNew.newsImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                Text(detailNew.newsTitle)
                    .font(.largeTitle)
                Text(detailNew.newsDescription)
                    .layoutPriority(10)
                    
                HStack{
                    Label("\(detailNew.newsViewCount)",systemImage: "eye.fill")
                    Text(detailNew.newsDate)
                }
                .padding()
                .foregroundColor(.secondary)
            }
            .padding()
        }
    }
}

