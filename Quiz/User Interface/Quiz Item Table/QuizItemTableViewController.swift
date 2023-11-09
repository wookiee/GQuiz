
import UIKit

class QuizItemTableViewController: UITableViewController {
    
    let store = QuizItemStore.shared
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        store.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuizItemCell") as! QuizItemCell
        
        let item = store.items[indexPath.row]
        cell.questionLabel.text = item.question
        cell.answerLabel.text = item.answer
        
        return cell
    }
    
}
