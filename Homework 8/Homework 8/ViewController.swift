//
//  ViewController.swift
//  Homework 8
//
//  Created by Owen Sabol on 4/21/20.
//  Copyright © 2020 Owen Sabol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bananaPinch: UIImageView!
    var pinchGesture = UIPinchGestureRecognizer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pinchGesture = UIPinchGestureRecognizer (target: self, action: #selector(ViewController.pinchedView))
        bananaPinch.isUserInteractionEnabled = true
        bananaPinch.addGestureRecognizer(pinchGesture)
    }

    @objc func pinchedView(sender:UIPinchGestureRecognizer){
        self.view.bringSubviewToFront(bananaPinch)
        sender.view?.transform = (sender.view?.transform)!.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1.0
    }
    
    
    
    
    

}

