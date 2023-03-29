//
//  ViewController.swift
//  myMarket
//
//  Created by kerem on 29.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let textlabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))

            
            label.font = UIFont.preferredFont(forTextStyle: .footnote)
            label.font = UIFont(name: "Halvetica", size: 200)
            label.textColor = .black
            label.center = CGPoint(x: 190, y: 750)
            label.textAlignment = .center
            label.text = "Kapıcıya hos geldin"
            label.textColor = .systemRed
        
        
        return label
    }()
    
    let imageView: UIImageView = {
        let image = UIImage(named: "anaEkran")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()


    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Giris Yap", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        view.addSubview(loginButton)
        view.addSubview(imageView)
        view.addSubview(textlabel)
        
            NSLayoutConstraint.activate([
                loginButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 75),
                loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 250),
                loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
                loginButton.heightAnchor.constraint(equalToConstant: 50),

            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            imageView.heightAnchor.constraint(equalToConstant: 500),
            imageView.widthAnchor.constraint(equalToConstant: 150)
            
            

           
            
        ])
        
        
    }
    
    
    
    @objc func loginButtonTapped(){
        performSegue(withIdentifier: "loginVC", sender: self)
    }
    
    
    
}
