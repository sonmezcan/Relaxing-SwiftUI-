//
//  AudioPlayer.swift
//  Restart
//
//  Created by can on 2.12.2024.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        let url = URL(fileURLWithPath: path)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }catch{
            print("Error: \(error.localizedDescription)")
        }
    }
}
