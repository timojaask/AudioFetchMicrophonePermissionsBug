import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var channelListLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = AudioManager.shared
    }

    @IBAction func listChannels_tapped(_ sender: Any) {
        let channels = AudioManager.shared.allApbs.flatMap { $0.channelList }
        let channelNames = channels.map { $0.name }
        channelListLabel.text = channelNames.reduce("", { (soFar, name) -> String in
            return "\(soFar)\n - \(name)"
        })
    }

    @IBAction func playChannel0_tapped(_ sender: Any) {
        AudioManager.shared.startAudio(on: 0)
    }

}

