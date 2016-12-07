//
//  ViewController.swift
//  TestDidSet
//
//  Created by Khoa on 12/7/16.
//  Copyright © 2016 Khoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var age: Int = 0 {
        willSet {
            if (age >= 100) {
                showAlert(title: "Error", message: "Bạn đã \(newValue) tuổi, quá già để xử dụng app của chúng tôi")
            }
        }
        didSet {
            if ( age > 10 && age < 100){
                ageLbl.text = "age: \(age)"
            }
        }
    }
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var ageTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func changeBtn(_ sender: Any) {
        guard let userAge = ageTF.text else {
            return
        }
        age = Int(userAge)!
    }
    func showAlert(title: String, message : String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
        
    }

}

