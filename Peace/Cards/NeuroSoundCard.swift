//
//  NeuroSoundCard.swift
//  Peace
//
//  Created by Praval Gautam on 24/02/24.
//

import SwiftUI

struct NeuroSoundCard: View {
    var data  = Data()
    var audioFileName = ""
    var desc = ""
    var neuroData  = NeuroData()
   @ObservedObject var musicPlayer = MusicPlayer()
    var body: some View {
        ZStack {
            Color.cyan
            VStack
            {
                HStack{
                    ZStack{
                        Image("m4")
                            .resizable()
                            .frame(width: 350,height: 150)
                            .cornerRadius(30)
                        Circle()
                            .frame(width: 60,height: 60)
                            .foregroundColor(.white)
                        Button {
                            musicPlayer.playPauseSong(audioFileName)
                            
                        } label: {
                            Image(systemName: musicPlayer.isPlaying ?  "pause.fill" : "play.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .offset(CGSize(width: 1.0, height: 0))
                        }

                    }
                }
                Spacer()
                HStack{
                    Text("\(desc)")
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                        .padding()
                }
                Spacer()
            }
            

        }.frame(width: 350,height: 300)
            .cornerRadius(30)
    }
}


#Preview {
    NeuroSoundCard()
}
