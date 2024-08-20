
import Foundation
import AVFoundation

// Als Struct eingebettet damit die Musik konstant läuft
struct Hintergrundmusik {
    
    var audioPlayer: AVAudioPlayer?
    
    mutating func play() {
        
        let basePath: String = "/Users/markuswirtz/Entwicklung/Projekte/02-abschluss-N-E-O-N-E/02 Abschluss"
        let upbeat: String = "\(basePath)/upbeat.mp3"
        let url: URL = URL(fileURLWithPath: upbeat)
        
        do {
            
            audioPlayer?.prepareToPlay() // ließt die datei vorsichtshalber neu ein
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.numberOfLoops = -1 // endlos
            audioPlayer?.setVolume(0.05, fadeDuration: 100) // lautstärke minimal im Hintergrund
            
            audioPlayer?.play()
            
            
        } catch {
            print("Fehler mit der Audiodatei!")
        }
        
    }
}
