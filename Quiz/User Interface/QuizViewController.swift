
import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let itemStore = QuizItemStore.shared
    var currentItem: QuizItem?
    
    @IBAction func handleTappedQuestionButton(_ sender: UIButton) {
        currentItem = itemStore.items.randomElement()
        guard let currentItem = self.currentItem else {
            dealWithEmptyList()
            return
        }
        
        questionLabel.text = currentItem.question
        answerLabel.text = "???"
    }
    
    @IBAction func handleTappedAnswerButton(_ sender: UIButton) {
        guard let currentItem = self.currentItem else {
            dealWithEmptyList()
            return
        }
        
        answerLabel.text = currentItem.answer
    }
    
    private func dealWithEmptyList() {
        questionLabel.text = "(no questions available)"
        answerLabel.text = ""
    }

}

