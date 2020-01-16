//
//  ViewController.swift
//  TipCalculator
//
//  Created by Asim Williams on 1/16/20.
//  Copyright © 2020 Asim Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func OnTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

