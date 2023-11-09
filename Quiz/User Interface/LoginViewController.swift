
import UIKit

class LoginViewController: UIViewController {
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        tabBarItem.title = "Login"
        tabBarItem.image = UIImage(systemName: "lock.circle")
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
    }
    
    
}
