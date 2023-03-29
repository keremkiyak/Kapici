//
//  CreditCardViewController.swift
//  myMarket
//
//  Created by kerem on 29.03.2023.
//

import UIKit

class CreditCardViewController: UIViewController {

    
    let textField1: UITextField = {
        let textField = UITextField(frame: CGRect(x: 50, y: 200, width: 280, height: 23))
        textField.font = UIFont.preferredFont(forTextStyle: .footnote)
        textField.font = UIFont(name: "Halvetica", size: 20)
        textField.textColor = .black
        textField.center = CGPoint(x: 200, y: 375)
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.placeholder = "0000 0000 0000 0000"
        textField.textColor = .black
        return textField
    }()
    
    let textField2: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 200, width: 60, height: 23))
        textField.font = UIFont.preferredFont(forTextStyle: .footnote)
        textField.font = UIFont(name: "Halvetica", size: 20)
        textField.textColor = .black
        textField.center = CGPoint(x: 190, y: 410)
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.placeholder = "00/00"
        textField.textColor = .black
        return textField
    }()
    
    
    let textField3: UITextField = {
        let textField = UITextField(frame: CGRect(x: 50, y: 200, width: 80, height: 23))
        textField.font = UIFont.preferredFont(forTextStyle: .footnote)
        textField.font = UIFont(name: "Halvetica", size: 20)
        textField.textColor = .black
        textField.center = CGPoint(x: 100, y: 425)
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.placeholder = "John Doe"
        textField.textColor = .black
        return textField
    }()
    
    
    let textField4: UITextField = {
        let textField = UITextField(frame: CGRect(x: 50, y: 200, width: 80, height: 23))
        textField.font = UIFont.preferredFont(forTextStyle: .footnote)
        textField.font = UIFont(name: "Halvetica", size: 20)
        textField.textColor = .black
        textField.center = CGPoint(x: 220, y: 580)
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.placeholder = "CVC"
        textField.textColor = .black
        return textField
    }()
    
    let completionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Alışverişi Tamamla", for: .normal)
        button.backgroundColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(completeButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2)
        scrollView.contentInsetAdjustmentBehavior = .never
        let subview = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height * 2))
        subview.backgroundColor = .red
        scrollView.addSubview(subview)
        view.addSubview(scrollView)
        
        let imageView1 = UIImageView()
        imageView1.frame = CGRect(x: 20, y: 100, width: 400, height: 500)
        imageView1.image = UIImage(named: "creditCard")
        imageView1.contentMode = .scaleAspectFit
        view.addSubview(imageView1)
        
        
        view.addSubview(textField1)
        view.addSubview(textField2)
        view.addSubview(textField3)
       
        
        let imageView2 = UIImageView()
        imageView2.frame = CGRect(x: 20, y: 350, width: 350, height: 500)
        imageView2.image = UIImage(named: "creditCard2")
        imageView2.contentMode = .scaleAspectFit
        view.addSubview(imageView2)
        view.addSubview(textField4)
        
        view.addSubview(completionButton)
        
        NSLayoutConstraint.activate([
            completionButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 750),
            completionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            completionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            completionButton.heightAnchor.constraint(equalToConstant: 50)])
    }
    
    func alert(){
        let alertController = UIAlertController(title: nil,
                                                message: "Siparişiniz en kısa sürede size ulaşacak",
                                                preferredStyle: UIAlertController.Style.alert)
        let okayButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.cancel)
        alertController.addAction(okayButton)
        present(alertController, animated: true)
    }
    

    @objc func completeButtonTapped(){
//        alert()
        performSegue(withIdentifier: "creditCardToBasketVC", sender: self)
    }
    
    
    
    
  
}
