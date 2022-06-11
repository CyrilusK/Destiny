import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var buttonChoice1: UIButton!
    @IBOutlet weak var buttonChoice2: UIButton!
    
    var stories = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Please select your language to get started \n Пожалуйста, выберите язык, чтобы начать"
        buttonChoice1.setTitle("English", for: .normal)
        buttonChoice2.setTitle("Русский", for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        if (sender.currentTitle! == "English" || sender.currentTitle! == "Русский") {
            stories.chooseLanguage(sender.currentTitle!)
            updateUI()
        }
        else {
            stories.nextStory(sender.currentTitle!)
            updateUI()
        }
    }
    
    
    func updateUI() -> Void {
        textLabel.text = stories.getTitle()
        let choices = stories.getChoice()
        buttonChoice1.setTitle(choices[0], for: .normal)
        buttonChoice2.setTitle(choices[1], for: .normal)
    }
}

