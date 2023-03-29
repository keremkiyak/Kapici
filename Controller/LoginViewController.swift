//
//  LoginViewController.swift
//  myMarket
//
//  Created by kerem on 29.03.2023.
//

import UIKit

class LoginViewController: UIViewController {

    
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
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Giris Yap", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Kayıt Ol", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(saveButton)
        
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            usernameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            
            saveButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            saveButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
  
    
    @objc func loginButtonTapped(){
        
        performSegue(withIdentifier: "loginToBasketVC", sender: self)
    }
    
    @objc func saveButtonTapped(){
        performSegue(withIdentifier: "signupVC", sender: self)
    }
    


}
