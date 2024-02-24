//
//  MeditationData.swift
//  Peace
//
//  Created by Praval Gautam on 24/02/24.
//

import Foundation
import SwiftUI

struct MeditationData{
    

    var meditationData: [Meditation] = [
        Meditation(image: "m1", songName: "Budapest", audioFileName: "Budapest"),
        Meditation(image: "m2", songName: "All of me", audioFileName: "All of Me"),
        Meditation(image: "m2", songName: "Perfect", audioFileName: "Perfect"),
        Meditation(image: "m1", songName: "Imagine", audioFileName: "Imagine"),
        Meditation(image: "m2", songName: "Shape of You", audioFileName: "ShapeOfYou"),
        Meditation(image: "m1", songName: "A Thousand Years", audioFileName: "AThousandYears"),
        Meditation(image: "m2", songName: "Something Just Like This", audioFileName: "SomethingJustLikeThis"),

    ]
}
struct Meditation: Identifiable {
    var id = UUID()
    var image: String
    var songName: String
    var audioFileName: String
}
