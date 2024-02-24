//
//  MedCard.swift
//  Peace
//
//  Created by Praval Gautam on 22/02/24.
//
import SwiftUI


struct MedCard: View {
    var image: String
    var audioFileName: String
    var songName: String

    @ObservedObject var musicPlayer = MusicPlayer()

    var body: some View {
        ZStack {
            Color.gray
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 170, height: 150)
                    .aspectRatio(contentMode: .fill)

                VStack {
                    ZStack(alignment: .center) {
                        Circle()
                            .foregroundColor(.color2)
                            .frame(width: 70, height: 60)
                        Button(action: {
                            musicPlayer.playPauseSong(audioFileName)
                        }) {
                            Image(systemName: musicPlayer.isPlaying ?  "pause.fill" : "play.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .offset(CGSize(width: 1.0, height: 0))
                        }
                    }
                    .frame(width: 70, height: 60)
                    .offset(x: -35, y: -40)
                }
            }

            VStack {
                Spacer()
                Text("\(songName)")
                    .foregroundStyle(.black)
                    .lineLimit(1)
                    .padding(20)
            }
        }
        .frame(width: 170, height: 200)
        .cornerRadius(20)
    }
}
