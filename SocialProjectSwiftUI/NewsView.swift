//
//  NewsView.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 02.04.2022.
//

import SwiftUI

struct NewsView: View {
    var news: [NewsModel] = NewsList.news
    
    var body: some View {
        NavigationView {
            List(news, id: \.id) { new in
                NavigationLink(destination: DetailNews(detailNew: new), label: {
                    HStack {
                    Image(new.newsImage)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        //.iconStyle()
                        VStack {
                            Text(new.newsTitle)
                            HStack {
                            Text(new.newsDate)
                            Label("\(new.newsViewCount)", systemImage: "eye.fill")
                            }
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        }
                    }
                })
               
            }
        }
        .navigationTitle("News")
}
    
}
