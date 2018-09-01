//
//  SettingsViewController.swift
//  tipCal
//
//  Created by Neil Shah on 9/1/18.
//  Copyright © 2018 Neil Shah. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipDefault: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let tipValue = defaults.integer(forKey: "defaultTip") 
        
        tipDefault.selectedSegmentIndex = tipValue
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipChange(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        
        defaults.set(tipDefault.selectedSegmentIndex, forKey: "defaultTip")
        
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
