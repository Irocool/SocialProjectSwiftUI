//
//  NewsModel.swift
//  SocialProjectSwiftUI
//
//  Created by Irina Kuligina on 02.04.2022.
//

import Foundation

struct NewsModel: Identifiable {
    var id = UUID()
    let newsImage: String
    let newsTitle: String
    let newsDescription: String
    let newsDate: String
    let newsViewCount: Int
}

struct NewsList {
    static let news = [
        NewsModel(newsImage: "profile2",
                  newsTitle: "У двух прибывших из ЮАР в РФ граждан выявлен штамм «Омикрон»",
                  newsDescription: "У двух пациентов с положительным ПЦР-тестом, полученным в первые сутки пребывания в обсерваторе, в результате полногеномного секвенирования, проведенного ЦНИИ эпидемиологии Роспотребнадзора, подтвержден штамм «Омикрон»",
                  newsDate: "6 december 2021",
                  newsViewCount: 40),
        NewsModel(newsImage: "profile2",
                  newsTitle: "Минстрой: с 1 марта 2022 года россиян начнут штрафовать за обшивку или остекление балкона",
                  newsDescription: "Министерство строительства и ЖКХ России 6 декабря сообщило на своём сайте, что штрафы за самовольное остекление балконов для граждан уже существуют, однако с 1 марта 2022 года правила начнут действовать и для юрлиц",
                  newsDate: "6 december 2021",
                  newsViewCount: 49),
        NewsModel(newsImage: "profile2",
                  newsTitle: "Песков заявил, что на переговорах Путина и Байдена планируется обсуждение Украины и НАТО",
                  newsDescription: "Переговоры президентов России и США Владимира Путина и Джо Байдена 7 декабря пройдут по защищенной видеосвязи, первые кадры беседы покажут, сообщил пресс-секретарь главы государства Дмитрий Песков",
                  newsDate: "6 december 2021",
                  newsViewCount: 13),
        NewsModel(newsImage: "profile2",
                  newsTitle: "ЕК раскритиковала статью FT о недоверии ЕС к данным США о «вторжении» России на Украину",
                  newsDescription: "США предоставили странам Евросоюза «нехарактерный» и «крайне широкий» объем данных разведки о подготовке России к вторжению на Украину, сообщили источники Financial Times",
                  newsDate: "6 december 2021",
                  newsViewCount: 64),
        NewsModel(newsImage: "profile2",
                  newsTitle: "Центробанк России предложил ввести обязательную сумму возврата денег жертвам мошенников",
                  newsDescription: "ЦБ разработал предложения по увеличению возврата гражданам похищенных через банки денег: сейчас это меньше 8% от украденного. Регулятор хочет ввести сумму возмещения и изменить порядок списания средств по мошенническим операциям",
                  newsDate: "6 december 2021",
                  newsViewCount: 100),
    ]
}
