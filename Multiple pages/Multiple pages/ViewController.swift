//
//  ViewController.swift
//  Multiple pages
//
//  Created by Owen Sabol on 2/18/20.
//  Copyright © 2020 Owen Sabol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var usernameField: UITextField!
    
    
    
    
    
    // set up the alert
    @IBAction func displayAlert(_ sender: Any) {
   
        let alert = UIAlertController(title: "Important Update", message: "Owen is the worst programmer Brad has ever seen" , preferredStyle: .alert)
    
    // set up the action
        alert.addAction(<#T##action: UIAlertAction##UIAlertAction#>(title: NSLocalizedString("OK", comment: "Default Action"), style: `default`, handler: { _ in }))
    
        self.present(alert,animated: true, completion: nil)
        
        
        
    }
    
    
    
}

