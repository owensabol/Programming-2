//
//  ViewController.swift
//  Homework 4
//
//  Created by Owen Sabol on 3/10/20.
//  Copyright © 2020 Owen Sabol. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

      
  
    
    
    @IBAction func showAlert(_ sender: Any) {
        let alertController = UIAlertController (title: "Important Message", message: "I am so tired!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
    self.present(alertController, animated: true, completion: nil)
    
    }
    
    
    @IBAction func showAlert2(_ sender: Any) {
    let alertController = UIAlertController(title: "Important Message", message:
            "Spring semester is killing me", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showAlert3(_ sender: Any) {
   
    let alertController = UIAlertController(title: "I am so awesome", message:
        "Name a better programmer then me... oh wait literally everyone else in world", preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

    self.present(alertController, animated: true, completion: nil)
    
    }
    
    
    
    
    
    
    
    
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    




