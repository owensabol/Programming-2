//
//  ViewController.swift
//  calculator
//
//  Created by Owen Sabol on 5/4/20.
//  Copyright © 2020 Owen Sabol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var screenNumber:Double = 0;
    var previousNumber:Double = 0;
    var math = false
    var operation = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if math == true
        {
            label.text = String(sender.tag-1)
            screenNumber = Double(label.text!)!
            math = true
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
                   screenNumber = Double(label.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
        previousNumber = Double(label.text!)!
        
            if sender.tag == 12 // Divide
            {
             label.text = "/"
            }
            else if sender.tag == 13 // Multiply
            {
              label.text = "x"
            }
            else if sender.tag == 14 // Minus
            {
              label.text = "-"
            }
            else if sender.tag == 15 // Add
            {
                label.text = "+"
            }
            
            operation = sender.tag
            math = true;
            
        }
        else if sender.tag == 16
        {
        if operation == 12
        {
            label.text = String(previousNumber / screenNumber)
        }
       else if operation == 13
        {
          label.text = String(previousNumber * screenNumber)
        }
      else if operation == 14
        {
          label.text = String(previousNumber - screenNumber)
        }
       else if operation == 15
        {
            label.text = String(previousNumber + screenNumber)
            
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousNumber = 0;
            screenNumber = 0;
            operation = 0;
            }
        
        
        
    }
    
    
    
    
    
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

}
