
import Foundation
import SpriteKit

let kSoundState = "kSoundState"
let kBackgroundMusicName = "summer"
let kBackgroundMusicExtension = "mp3"

let kScore = "kScore"
let kBestScore = "kBestScore"




class ACTPlayerStats {
    
    private init() {}
    static let shared = ACTPlayerStats()
    
    func setScore(_ value: Int) {
        
        if value > getBestScore() {
            setBestScore(value)
        }
        
        UserDefaults.standard.set(value, forKey: kScore)
        UserDefaults.standard.synchronize()
    }
    
    func getScore() -> Int {
        return UserDefaults.standard.integer(forKey: kScore)
    }
    
    func setBestScore(_ value: Int) {
        UserDefaults.standard.set(value, forKey: kBestScore)
        UserDefaults.standard.synchronize()
    }
    
    func getBestScore() -> Int {
        return UserDefaults.standard.integer(forKey: kBestScore)
    }
    
    func setSounds(_ state: Bool) {
        UserDefaults.standard.set(state, forKey: kSoundState)
        UserDefaults.standard.synchronize()
    }
   
    //Checking if the sound is enabled or not
    func getSound() -> Bool {
        return UserDefaults.standard.bool(forKey: kSoundState)
        
    }
    
    
 
    
}