//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Adham Raouf on 06/02/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
   
    var BMIValue : String?
    var advice : String?
    var color : UIColor?
    
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        BMILabel.text = BMIValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
