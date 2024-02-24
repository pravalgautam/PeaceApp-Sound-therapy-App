//
//  MusicPlayer.swift
//  Peace
//
//  Created by Praval Gautam on 24/02/24.
//
import Foundation
import AVFoundation
import UIKit

class MusicPlayer: ObservableObject {
    private var audioPlayer: AVAudioPlayer?

    @Published var currentSong: String?
    @Published var isPlaying: Bool = false

    func playPauseSong(_ name: String) {
        if let audioPlayer = audioPlayer, audioPlayer.isPlaying {
            audioPlayer.stop()
            isPlaying = false
        } else {
            if let audioDataAsset = NSDataAsset(name: name) {
                do {
                    self.audioPlayer = try AVAudioPlayer(data: audioDataAsset.data)
                    self.audioPlayer?.play()
                    currentSong = name
                    isPlaying = true
                } catch {
                    print("Error loading audio file: \(error.localizedDescription)")
                }
            } else {
         
                print("Audio asset named \(name) not found!")
            }
        }
    }
  
}

