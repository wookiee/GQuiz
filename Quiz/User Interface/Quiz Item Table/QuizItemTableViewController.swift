
import UIKit

class QuizItemTableViewController: UITableViewController {
    
    let store = QuizItemStore.shared
    
    lazy var shownItems = store.items {
        didSet {
            tableView.reloadData()
        }
    }
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        searchController.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shownItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuizItemCell") as! QuizItemCell
        
        let item = shownItems[indexPath.row]
        cell.questionLabel.text = item.question
        cell.answerLabel.text = item.answer
        
        return cell
    }
    
}

extension QuizItemTableViewController: UISearchControllerDelegate, UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text else {
            shownItems = store.items
            return
        }
        
        let filteredItems = store.items.filter { item in
            item.question.localizedCaseInsensitiveContains(searchText) ||
            item.answer.localizedCaseInsensitiveContains(searchText)
        }
        shownItems = filteredItems
    }
    
    func didDismissSearchController(_ searchController: UISearchController) {
        shownItems = store.items
    }
}
