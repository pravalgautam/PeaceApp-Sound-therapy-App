//
//  ContentView.swift
//  Peace
//
//  Created by Praval Gautam on 22/02/24.

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                 Image("app 1")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                Text("A happy life \nbegin with \npeace of mind")
                    .font(.system(size: 40))
                    .bold()
                    .fontDesign(.rounded)
                    .foregroundStyle(.white)
                    .padding(.top,50)
                Spacer()
                NavigationLink(destination: {
                    FormatSelectionView()
                }, label: {
                    Text("Continue")
                        .font(.system(size: 20))
                })
                .foregroundColor(.white)
                .frame(width: 350,height: 60)
                .background(Color.color)
                .cornerRadius(40)
                
            }
        }
    
    }
}

#Preview {
    ContentView()
}
