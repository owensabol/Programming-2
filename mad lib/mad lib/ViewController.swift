//
//  ViewController.swift
//  mad lib
//
//  Created by Owen Sabol on 2/17/20.
//  Copyright © 2020 Owen Sabol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var month: UITextField!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var celebrity: UITextField!
    @IBOutlet weak var adjetive: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func buttonEnter(_ sender: Any) {
        label.text = "There once was a guy named " + name.text! + " who was born in " + month.text! + ". His favorite number was " + number.text! + " and he was married to " + celebrity.text! + "and he's very" + adjetive.text!
 
    
    
    }
    
    
    
}

