//
//  ViewController.swift
//  CalcApp
//
//  Created by Nilrajsinh Vaghela on 23/08/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate {

    @IBOutlet weak var TxtA: UITextField!
    
    @IBOutlet weak var txtB: UITextField!
    
    
    @IBAction func SagmentChange(_ sender: UISegmentedControl) {
        
        if (TxtA,txtB) != nil{
            let alert = UIAlertController(title: "Missing value:", message: "Add the value of A and B", preferredStyle:.alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
                
            }))
            
            self.present(alert, animated: true, completion: nil)
            
        }
        else{
            
            
        let a = ((Int) (TxtA.text!))!
        let b = ((Int) (txtB.text!))!
        
        var c = 0
        
        
        switch sender.selectedSegmentIndex {
        case 0:
            c = a + b
            
        case 1:
            c = a - b
        
        case 2:
            c = a * b
        
        case 3:
            c = a / b
        default:
            print("Select method")
            break
        }
        
        let alertView = UIAlertController(title: "Answer:", message: "Answer is : \(c)", preferredStyle:.alert)
        
        
        alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
          
        }))
        
        self.present(alertView, animated: true, completion: nil)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     textField.resignFirstResponder()
        return true
    }
}




