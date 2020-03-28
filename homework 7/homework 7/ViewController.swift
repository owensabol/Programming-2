//
//  ViewController.swift
//  homework 7
//
//  Created by Owen Sabol on 3/25/20.
//  Copyright © 2020 Owen Sabol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var upVoteCounter: UILabel!
    @IBOutlet weak var downVoteCounter: UILabel!
    @IBOutlet weak var winner: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool){
        <#code#>
        upVoteCounter.text = String ((parent as! TBViewController) .absolutelyVote)
        
        downVoteCounter.text = String ((parent as! TBViewController) .nopeVote)
    
        
        
        if (parent as! TBViewController) .absolutelyVote > (parent as! TBViewController) .nopeVote
        {
            winner.text = "Absolutely"
        }
        else
        {
            winner.text = "Nope"
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

