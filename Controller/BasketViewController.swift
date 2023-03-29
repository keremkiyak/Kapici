//
//  BasketViewController.swift
//  myMarket
//
//  Created by kerem on 29.03.2023.
//

import UIKit
import CoreData

class BasketViewController: UIViewController {

    var elma = 0
    
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
        
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height * 2)
        scrollView.contentInsetAdjustmentBehavior = .never
        let subview = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height * 2))
        subview.backgroundColor = .red
        scrollView.addSubview(subview)
        view.addSubview(scrollView)
        view.addSubview(purchaseButton)
        
        
        let imageView1 = UIImageView()
        imageView1.frame = CGRect(x: 30, y: 100, width: 100, height: 100)
        imageView1.image = UIImage(named: "elma")
        imageView1.contentMode = .scaleAspectFit
        view.addSubview(imageView1)
        
         imageView1.isUserInteractionEnabled = true
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        imageView1.addGestureRecognizer(recognizer1)
        
        
        let stepper1 = UIStepper()
        stepper1.frame = CGRect(x: 30, y: 225, width: 100, height: 50)
        stepper1.minimumValue = 0
        stepper1.maximumValue = 10
        stepper1.stepValue = 1
        stepper1.value = 0
        stepper1.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
        view.addSubview(stepper1)
        
        let imageView2 = UIImageView()
        imageView2.frame = CGRect(x: 250, y: 100, width: 100, height: 100)
        imageView2.image = UIImage(named: "armut")
        imageView2.contentMode = .scaleAspectFit
        view.addSubview(imageView2)
        
        let stepper2 = UIStepper()
        stepper2.frame = CGRect(x: 250, y: 225, width: 100, height: 50)
        stepper2.minimumValue = 0
        stepper2.maximumValue = 10
        stepper2.stepValue = 1
        stepper2.value = 0
        stepper2.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
        view.addSubview(stepper2)
        
        
        
        let imageView3 = UIImageView()
        imageView3.frame = CGRect(x: 30, y: 425, width: 100, height: 100)
        imageView3.image = UIImage(named: "karpuz")
        imageView3.contentMode = .scaleAspectFit
        view.addSubview(imageView3)
        
        let stepper3 = UIStepper()
        stepper3.frame = CGRect(x: 30, y: 550, width: 100, height: 50)
        stepper3.minimumValue = 0
        stepper3.maximumValue = 10
        stepper3.stepValue = 1
        stepper3.value = 0
        stepper3.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
        view.addSubview(stepper3)
        
        let imageView4 = UIImageView()
        imageView4.frame = CGRect(x: 250, y: 425, width: 100, height: 100)
        imageView4.image = UIImage(named: "uzum")
        imageView4.contentMode = .scaleAspectFit
        view.addSubview(imageView4)
        
        let stepper4 = UIStepper()
        stepper4.frame = CGRect(x: 250, y: 550, width: 100, height: 50)
        stepper4.minimumValue = 0
        stepper4.maximumValue = 10
        stepper4.stepValue = 1
        stepper4.value = 0
        stepper4.addTarget(self, action: #selector(stepperValueChanged(_:)), for: .valueChanged)
        view.addSubview(stepper4)
        
        
        
        NSLayoutConstraint.activate([
            purchaseButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 750),
        purchaseButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        purchaseButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        purchaseButton.heightAnchor.constraint(equalToConstant: 50)])
       
    }
    

    @objc func purchaseButtonTapped(){
        performSegue(withIdentifier: "creditcardVC", sender: self)
    }
    
    @objc func stepperValueChanged(_ sender: UIStepper) {
        print(sender.value)
    }
    
    @objc func increaseScore(){
       
        elma += 1
        
        
    }

}
