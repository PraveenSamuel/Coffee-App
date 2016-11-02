//
//  ViewController.swift
//  CoffeeApp
//
//  Created by Praveen Samuel . J on 02/11/16.
//  Copyright © 2016 Praveen Samuel . J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var priceDisplay: UILabel!
    
    @IBOutlet weak var inputCount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputCount.layer.cornerRadius = 15.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculatePrice(_ sender: AnyObject) {
        if inputCount.text == "" {
            let alert = UIAlertController(title: "Enter Coffee Count" , message: "count of cups of coffee", preferredStyle: UIAlertControllerStyle.alert)
            
            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            
            alert.addAction(action)
            
            alert.view.tintColor = UIColor.brown
            
            self.present(alert, animated: true, completion: nil)
            
        }else{
        
        let input = Double(inputCount.text!)
        
        priceDisplay.text = "$ \(input! * 5.0)"
        }
    }
    
}

