//
//  NeuroSounds.swift
//  Peace
//
//  Created by Praval Gautam on 22/02/24.
//

import SwiftUI

struct NeuroSounds: View {
    var neuroData = NeuroData()
    
    var body: some View {
        ZStack{
      
            VStack { 
                ScrollView{
                    ForEach(0..<neuroData.audioFile.count){ i in
                        NeuroSoundCard(audioFileName: neuroData.audioFile[i],desc: neuroData.desc[i])
                        
                    }
                }
            }
          
        }
        .scrollIndicators(.hidden)
        .navigationTitle("Neuro Sounds")
        .navigationBarTitleDisplayMode(.automatic)
    }
}
#Preview {
    NeuroSounds()
}
