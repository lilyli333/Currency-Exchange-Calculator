//
//  ViewController.swift
//  Currency Exchange Calculator
//
//  Created by Lily Li on 6/21/17.
//  Copyright © 2017 Lily Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pesosAmountTextField: UITextField!
    @IBOutlet weak var dollarAmountTextField: UITextField!
    
    
    @IBAction func CalculateButton(_ sender: Any) {
        
        guard let dollarValue = Double(dollarAmountTextField.text!) else{
             return
        }
        
        print("\(dollarValue)")
        
        let pesosValue: Double = dollarValue * 18.23
        let formatedString = String(format: "%.2f", pesosValue)
        pesosAmountTextField.text = ("P \(formatedString)")
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

