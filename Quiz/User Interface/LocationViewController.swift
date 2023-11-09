
import UIKit

class LocationViewController: UIViewController {
    
    var locLabel: UILabel!
    var locField: UITextField!
    var locButton: UIButton!
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        tabBarItem.title = "Location"
        tabBarItem.image = UIImage(systemName: "location")
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        addLocLabel()
        addLocField()
        addLocButton()
        addLayoutConstraints()
    }
    
    private func addLocLabel() {
        locLabel = UILabel()
        locLabel.text = "Location:"
        view.addSubview(locLabel)
        locLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addLocButton() {
        let onTapAction = UIAction(title: "Get Location") { [weak self] _ in
            print("We're starting up")
        }
        locButton = UIButton(type: .system,
                               primaryAction: onTapAction)
        view.addSubview(locButton)
        locButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addLocField() {
        locField = UITextField()
        view.addSubview(locField)
        locField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addLayoutConstraints() {
        
        locField.setContentHuggingPriority(.defaultLow, for: .horizontal)
        locLabel.setContentHuggingPriority(.required, for: .horizontal)
        
        locField.leadingAnchor.constraint(equalTo: locLabel.trailingAnchor, constant: 20).isActive = true
        
        view.layoutMarginsGuide.leadingAnchor.constraint(equalTo: locLabel.leadingAnchor, constant: -20).isActive = true
        
        locLabel.firstBaselineAnchor.constraint(equalTo: locField.firstBaselineAnchor).isActive = true
        
        locField.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 1.0).isActive = true
        
        locField.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20).isActive = true
        
        locField.bottomAnchor.constraint(equalTo: locButton.topAnchor, constant: -20).isActive = true
        
        locButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

    }
    
}
