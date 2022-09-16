
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        //Riduce l'opacità del 50% del pulsante premuto
        sender.alpha = 0.5
        
        //Eseguito dopo 0.2 sec
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            //Riporta l'opacità al 100%
            sender.alpha = 1.0
        }
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
