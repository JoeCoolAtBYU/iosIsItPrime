//
//  ViewController.swift
//  Is It Prime
//
//  Created by Joshua on 8/31/18.
//  Copyright © 2018 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultlabel: UILabel!
    
    @IBAction func buttonClicked(_ sender: Any) {
        if let userEnteredString = numberTextField.text{
            let userEnteredInteger = Int(userEnteredString)
            if let number = userEnteredInteger {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                
                var i = 2
                
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    
                    i+=1
                }
                if isPrime{
                    resultlabel.text = "\(number) is a prime number."
                } else {
                    resultlabel.text = "\(number) is not a prime number."
                }
            } else {
                resultlabel.text = "Please enter a positive whole number."
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

