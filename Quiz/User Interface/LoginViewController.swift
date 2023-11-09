
import UIKit

class LoginViewController: UIViewController {
    
    var loginLabel: UILabel!
    var loginField: UITextField!
    var loginButton: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        tabBarItem.title = "Login"
        tabBarItem.image = UIImage(systemName: "lock.circle")
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        addLoginLabel()
        addLoginField()
        addLoginButton()
    }
    
    private func addLoginLabel() {
        loginLabel = UILabel()
        loginLabel.text = "Username:"
        view.addSubview(loginLabel)
    }
    
    private func addLoginButton() {
        let onTapAction = UIAction(title: "Login") { _ in
            print("We're logging in")
        }
        loginButton = UIButton(type: .system,
                               primaryAction: onTapAction)
        view.addSubview(loginButton)
    }
    
    private func addLoginField() {
        loginField = UITextField()
        view.addSubview(loginField)
    }
    
    
}
