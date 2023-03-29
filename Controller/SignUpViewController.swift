import UIKit
import CoreData

class SignUPViewController: UIViewController {

    let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.autocorrectionType = .no
        return textField
    }()
    
    
    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Kayıt oluştur", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        
        
            
        
        
        
        view.addSubview(signUpButton)
        
        NSLayoutConstraint.activate([
            
            usernameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            
            
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
           passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            
            signUpButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            signUpButton.heightAnchor.constraint(equalToConstant: 50),
        
            ])
    }
    

    
    
    @objc func signUpButtonTapped(){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let context = appDelegate?.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Person", in: context!)
        let person = NSManagedObject(entity: entity!, insertInto: context)
        person.setValue(usernameTextField.text, forKey: "userName")
        person.setValue(passwordTextField.text, forKey: "password")
        
        do{
            try context?.save()
        }
        catch{
            print("kaydedilemedi")
        }
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Person")
        
        do {
            let people = try context?.fetch(fetchRequest)
            if let people = people {
                for person in people {
                    print(person.value(forKeyPath: "userName") as? String ?? "No name")
                }
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        performSegue(withIdentifier: "signUpToLoginVC", sender: self)
        
    }
}
