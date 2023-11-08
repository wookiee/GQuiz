
import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    @IBAction func handleTappedQuestionButton(_ sender: UIButton) {
        questionLabel.text = "Question Button Tapped"
    }
    
    @IBAction func handleTappedAnswerButton(_ sender: UIButton) {
        answerLabel.text = "Answer Button Tapped"
    }

}

