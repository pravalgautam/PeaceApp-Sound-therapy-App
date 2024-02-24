//
//  ArticleCard.swift
//  Peace
//
//  Created by Praval Gautam on 22/02/24.
//

import SwiftUI

struct ArticleCard: View {
    var image : String = "song"
 var topic : String = "Meditation Article"
    var link: String = "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4895748/"
    var body: some View {
        ZStack{
            Color.gray
            HStack(spacing: 30){
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Text("\(topic)")
                    .lineLimit(2)
                Button {
                    openLink()
                } label: {
                Text("open")
                        .font(.title3)
              
                        .foregroundColor(.blue)
                   
                }
                .frame(width: 70,height: 40)
                .background(.white)
                .cornerRadius(20)
                .offset(x:30)

             
                Spacer()
            }.padding(.horizontal,20)
            
        }.frame(width: 370,height: 80)
            .cornerRadius(20)
            .padding(10)
    }
    func openLink() {
        if let url = URL(string: link), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}

#Preview {
    ArticleCard()
}
