//
//  FormatSelectionView.swift
//  Peace
//
//  Created by Praval Gautam on 22/02/24.
//

import SwiftUI

struct FormatSelectionView: View {
    var body: some View {
        ZStack{
            Color.color
            VStack(alignment: .leading){
                Text("What format\n do you prefer?")
                    .font(.system(size: 40))
                    .bold()
                    .fontDesign(.rounded)
                    .foregroundStyle(.white)
                   .padding(.bottom,50)
                
                FormatSelectionLink(title: "Audio Meditation", destination: AudioMeditation())
                    
                             FormatSelectionLink(title: "Article", destination: Article())
                FormatSelectionLink(title: "Instrumental Music", destination: InstrumentalMusic())
                             FormatSelectionLink(title: "Neuro Sounds", destination: NeuroSounds())
               
                            

                
                
            }
            
            
        }
        .ignoresSafeArea(edges: .all)
      
    }
}

#Preview {
    FormatSelectionView()
}


struct FormatSelectionLink<Destination: View>: View {
    var title: String
    var destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
                .foregroundColor(.white)
                .frame(width: 350, height: 60)
                .background(Color.color1)
                .cornerRadius(40)
              
        }
      
    }
}
