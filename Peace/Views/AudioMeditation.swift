//  AudioMeditation.swift
//  Peace
//
//  Created by Praval Gautam on 22/02/24.
//
import SwiftUI

struct AudioMeditation: View {
    var musicPlayer = MusicPlayer()
    var meditationData =  MeditationData()
    var arr = ["Omahe"]

    var body: some View {

            ZStack {
             
                VStack {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 20) {
                            ForEach(meditationData.meditationData) { meditation in
                                MedCard(image: meditation.image, audioFileName: meditation.audioFileName, songName: meditation.songName)
                            }
                        }
             
                    }
                }
                .scrollIndicators(.hidden)
           
        }
            .navigationTitle("Audio Meditation")
            .navigationBarTitleDisplayMode(.automatic)
    }
}
#Preview {
    AudioMeditation()
}
