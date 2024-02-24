//
//  Article.swift
//  Peace
//
//  Created by Praval Gautam on 22/02/24.
//

import SwiftUI

struct Article: View {
    var body: some View {
        VStack{
            ScrollView{
                ArticleCard()
         

            }.scrollIndicators(.hidden)
        }
        .navigationTitle("Article")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

#Preview {
    Article()
}
