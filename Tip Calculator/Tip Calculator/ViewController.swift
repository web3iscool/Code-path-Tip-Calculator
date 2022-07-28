//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Anya Bindra on 7/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var BillAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemPink
        
          
        
    }

    @IBOutlet weak var tipSlider: UISlider!
    @IBAction func tipSlider(_ sender: Any) {
        let bill = Double(BillAmountTextField.text!) ?? 0.00
                
                // Calculate the tip and total
                let tipPercentage = round(tipSlider.value)
                let tip = bill * Double(tipPercentage) / 100
                let total = bill + tip
                
                // Calculate Per Person
                
                
                // Update the tip and total labels
                
                tipAmount.text = String(format: "$%.2f", tip)
                totalLabel.text = String(format: "$%.2f", total)
                
    }
    
    /*@IBAction func calculateTip(_ sender: Any) {
        let bill = Double(BillAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmount.text=String(format: "$%.2f",tip)
        totalLabel.text=String(format: "$%.2f",total)
    }*/
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
}

