//
//  ContentView.swift
//  sound_app
//
//  Created by Mohamed Salah on 10/03/2023.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var audioPlayer : AVAudioPlayer!
    @State private var lasstSoundNumber = -1;
    
    var body: some View {
        VStack {
            Button("Make Sound") {
                var soundNumber: Int
                
                repeat{
                    
                    soundNumber = Int.random(in: 0...5)
                    
                }while soundNumber == lasstSoundNumber
                
                let soundName = "sound\(soundNumber)";
                guard let soundFile = NSDataAsset(name: soundName)else{
                    print("Could not read 🥹")
                    return
                }
                do{
                    
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play();
                    
                } catch {
                    
                    //                    print("Error: \(error.localizedDescription)")
                    
                
            }
            
        }
        
    }
        .padding()
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
