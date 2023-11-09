
import UIKit

class QuizItemCell: UITableViewCell {
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var answerLabel: UILabel!
    
    override func prepareForReuse() {
        questionLabel.text = nil
        answerLabel.text = nil
    }
}
