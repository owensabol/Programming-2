//
//  ViewController.swift
//  Homework 3 real
//
//  Created by Owen Sabol on 3/18/20.
//  Copyright © 2020 Owen Sabol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    }

    @IBOutlet weak var myView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var hideButton: UIButton!
    
    
    @IBAction func changeAnimation(_ sender: Any)
    {
        if (myView.isAnimating)
        {
            myView.stopAnimating()
        }
        else
        {
            myView.startAnimating()
        }
    }
    
    @IBAction func adjustSpeed(_ sender: Any) {
    myView.animationDuration=TimeInterval(3.0-speedSlider.value)
        myView.startAnimating()
    }
    
    @IBAction func hideToggle(_ sender: Any) {
   
        if (myView.isHidden)
        {
            myView.isHidden = false
        }
        let myAnimation: [UIImage] = [
           
            UIImage(named:"armorsteve.png")!,
            UIImage(named:"chicken.png")!,
            UIImage(named:"cow.png")!,
            UIImage(named:"dirt.png")!,
            UIImage(named:"emerald.png")!,
            UIImage(named:"heart.png")!,
            UIImage(named:"skeleton.png")!,
            UIImage(named:"spider.png")!,
            UIImage(named:"wolf.png")!,
            UIImage(named:"zombie.png")!,
            ]
            myView.animationImages = myAnimation
            myView.animationDuration=1.0
   
    }
    
    
    
    
    
    
}

