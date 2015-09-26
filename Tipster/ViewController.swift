//
//  ViewController.swift
//  Tipster
//
//  Created by Samantha Wong on 2015-09-26.
//  Copyright © 2015 Samantha Wong. All rights reserved.
//

// i can write whatever here! Function that gets run. What am I doing here... comments for self & others. you don't need periods! 
// indentation in swift is no big deal.... in python it matters


// if it starts with the name, start lowerCase so then they'll know it's a variable

// variable = label
// function = use variables to take actions/ modify stuff

// variables go down, but not up.

// dot.nospacesotherwisewillnotchain it will fail!

// anything between quotes is "safe" (a string) . program won't run it

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         tipAmountLabel.backgroundColor = UIColor.purpleColor()
        
        tipAmountLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        var tipPercentages = [0.15, 0.18, 0.2, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex] //tipControl.selectedSegmentIndex
        
        var tipPercentag = tipPercentages[0]  //tipPercentag = 0.15
        var tipPercenta = tipPercentages[1]
        var tipPercent = tipPercentages[2]
        var tipPercen = tipPercentages[3]
        
        //you would rarely use something like the above four tip[0]....
        
        
        var amount = billAmountField.text
        
        var billAmount = NSString(string: amount!).doubleValue
    
        var tipAmount = billAmount *   tipPercentage
        var total = billAmount + tipAmount
        
        
        tipAmountLabel.text = "$\(tipAmount)"
        totalLabel.text = "$\(total)"
    

        print(tipAmount)
        print(total)
        
        print(tipControl.selectedSegmentIndex)
    // names cannot be the same
    }
}

