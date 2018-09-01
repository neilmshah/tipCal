//
//  ViewController.swift
//  tipCal
//
//  Created by Neil Shah on 8/31/18.
//  Copyright © 2018 Neil Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var tippLabel: UILabel!
    @IBOutlet weak var totalLab: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let tipValue = defaults.integer(forKey: "defaultTip")
        tipPercentage.selectedSegmentIndex = tipValue
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //print("view did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    

    @IBAction func calculate(_ sender: Any) {
        
        let tipValues = [0.15, 0.18, 0.20]
        
        let bill = Double(billText.text!) ?? 0
        let tip = bill * tipValues[tipPercentage.selectedSegmentIndex]
        let total = bill + tip
        
        tippLabel.text = String(format: "$%.2f",tip)
        totalLab.text = String(format: "$%.2f",total)
    }
    
    
    
}

