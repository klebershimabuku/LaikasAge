//
//  ViewController.swift
//  LaikasAge
//
//  Created by Kleber Shimabuku on 26/02/15.
//  Copyright (c) 2015 Shigotodoko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    
    @IBOutlet weak var humansYearsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let humansYears = humansYearsTextField.text.toInt()!
        let dogYears = 7
        
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(humansYears * dogYears)" + " dog years"

        humansYearsTextField.text = ""
        humansYearsTextField.resignFirstResponder()
    }

}

