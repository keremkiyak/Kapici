//
//  SignUPViewController.swift
//  myMarket
//
//  Created by kerem on 29.03.2023.
//

import UIKit

class SignUPViewController: UIViewController {

    let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Kayıt oluştur", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(purchaseButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        view.addSubview(signUpButton)
        
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
        signUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        signUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        signUpButton.heightAnchor.constraint(equalToConstant: 50)])
        
        
    }
    

    
    
    @objc func purchaseButtonTapped(){
        performSegue(withIdentifier: "basketVC", sender: self)
    }

}
