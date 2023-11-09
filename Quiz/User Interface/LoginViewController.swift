
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
        addLayoutConstraints()
    }
    
    private func addLoginLabel() {
        loginLabel = UILabel()
        loginLabel.text = "Username:"
        view.addSubview(loginLabel)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addLoginButton() {
        let onTapAction = UIAction(title: "Login") { _ in
            print("We're logging in")
        }
        loginButton = UIButton(type: .system,
                               primaryAction: onTapAction)
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addLoginField() {
        loginField = UITextField()
        view.addSubview(loginField)
        loginField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addLayoutConstraints() {
        
        loginField.setContentHuggingPriority(.defaultLow, for: .horizontal)
        loginLabel.setContentHuggingPriority(.required, for: .horizontal)
        
        loginField.leadingAnchor.constraint(equalTo: loginLabel.trailingAnchor, constant: 20).isActive = true
        
        view.layoutMarginsGuide.leadingAnchor.constraint(equalTo: loginLabel.leadingAnchor, constant: -20).isActive = true
        
        loginLabel.firstBaselineAnchor.constraint(equalTo: loginField.firstBaselineAnchor).isActive = true
        
        loginField.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1.0).isActive = true
        
        loginField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20).isActive = true
        
        loginField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20).isActive = true
        
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

    }
    
}
