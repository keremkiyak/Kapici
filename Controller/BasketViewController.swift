//
//  BasketViewController.swift
//  myMarket
//
//  Created by kerem on 29.03.2023.
//

import UIKit

class BasketViewController: UIViewController {

    
    let purchaseButton: UIButton = {
        let button = UIButton()
        button.setTitle("Satın al", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(purchaseButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        view.addSubview(purchaseButton)
        
        NSLayoutConstraint.activate([
            purchaseButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
        purchaseButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        purchaseButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        purchaseButton.heightAnchor.constraint(equalToConstant: 50)])
       
    }
    

    @objc func purchaseButtonTapped(){
        performSegue(withIdentifier: "creditCardVC", sender: self)
    }

}
