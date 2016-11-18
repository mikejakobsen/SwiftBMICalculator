//
//  ViewController.swift
//  amIFat
//
//  Created by Mike Jakobsen on 15/11/2016.
//  Copyright © 2016 Mike Jakobsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var weightInput: UITextField!
    
    @IBOutlet weak var heightInput: UITextField!

    @IBOutlet weak var calcBmi: UIButton!
    
    @IBOutlet weak var resultBmi: UILabel!
}

