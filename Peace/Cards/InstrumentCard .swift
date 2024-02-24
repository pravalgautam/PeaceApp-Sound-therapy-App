//  InstrumentCard .swift
//  Peace
//  Created by Praval Gautam on 24/02/24.

import SwiftUI

struct InstrumentCard: View {
    var instrumentImage : String = "m2"
    var instrumentTopic : String = "Guitar"
    var instrumentText : String = "this is the description"
    var audioFileName: String = ""
    @ObservedObject var musicPlayer = MusicPlayer()
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.black
            VStack(alignment: .leading){
                HStack(spacing: 48){
                    ZStack{
                        Image(instrumentImage)
                            .resizable()
                            .frame(width: 150,height: 150)
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
                    
                    Text(instrumentTopic)
                        .font(.title)
                        .foregroundStyle(.white)
                }
                HStack{
                    Text("\(instrumentText)")
                        .padding()
                        .foregroundStyle(.white)
                        .font(.caption)
                }
            }
        }.frame(width: 350,height: 300)
            .cornerRadius(30)
    }
}

#Preview {
    InstrumentCard()
}
