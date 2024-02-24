//
//  InstrumentalMusic.swift
//  Peace
//
//  Created by Praval Gautam on 22/02/24.
//

import SwiftUI

struct InstrumentalMusic: View {
    var data = Data()

    var musicPlayer =  MusicPlayer()
    var body: some View {
        ScrollView{
            ForEach(0..<data.instrument.count){i in
                InstrumentCard(instrumentImage:data.instrumentImage[i], instrumentTopic: data.instrument[i],instrumentText: data.instrumentDesc[i],audioFileName: data.audioFileName[i])
            }
           
 
        }
     
        .scrollIndicators(.hidden)
        .navigationTitle("Instrumental Music")
        .navigationBarTitleDisplayMode(.automatic)
      
        
    }
}

#Preview {
    InstrumentalMusic()
}
