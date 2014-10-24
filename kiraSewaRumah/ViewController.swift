//
//  ViewController.swift
//  kiraSewaRumah
//
//  Created by Mohammad Adlan on 10/23/14.
//  Copyright (c) 2014 EndQueue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var houseRentText: UITextField!
    @IBOutlet weak var electricBillText: UITextField!
    @IBOutlet weak var waterBillText: UITextField!
    @IBOutlet weak var internetBillText: UITextField!
    @IBOutlet weak var totalMatesText: UITextField!
    
    @IBOutlet weak var rentCalcLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateAll(sender: UIButton) {
        let homeRent = Double((houseRentText.text as NSString).doubleValue)
        let waterBil = Double((waterBillText.text as NSString).doubleValue)
        let internetBil = Double((internetBillText.text as NSString).doubleValue)
        let electricBil = Double((electricBillText.text as NSString).doubleValue)        
        let totalMates = totalMatesText.text.toInt()!
        
        rentCalcLabel.hidden = false
        totalMatesText.resignFirstResponder()
        rentCalcLabel.text = "\((homeRent + waterBil + internetBil + electricBil) / Double(totalMates))"
    }

}

