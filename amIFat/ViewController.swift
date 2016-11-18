//
//  ViewController.swift
//  amIFat
//
//  Created by Mike Jakobsen on 15/11/2016.
//  Copyright © 2016 Mike Jakobsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Result
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var weightOutlet: UILabel!
    @IBOutlet weak var heightOutlet: UILabel!
    @IBOutlet weak var fatLabel: UILabel!
    
    var h:Float = 1.6
    var w:Float = 80
    var bmi:Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Knappen
    @IBAction func amIFat(_ sender: Any) {
        bmi = (w/(h*h))
        
        bmiResult.text = NSString(format: "%.2f", bmi) as String
        
        self.changeStatus(bmi: bmi)
        
    }
    @IBAction func weightChanged(_ sender: UISlider) {
        w = sender.value
        weightOutlet.text = "\(w) kg"
    }
    @IBAction func heightChanged(_ sender: UISlider) {
        h = sender.value
        heightOutlet.text = "\(h) cm"
    }
    
    private func changeStatus(bmi: Float) {
        if (bmi < 18.5) {
            fatLabel.text = "Underweight"
            fatLabel.textColor = UIColor.green
        } else if (bmi >= 18.5 && bmi < 25) {
            fatLabel.text = "Normal"
            fatLabel.textColor = UIColor.yellow
        } else {
            fatLabel.text = "Overweight"
            fatLabel.textColor = UIColor.red
        
        }
    }
}

