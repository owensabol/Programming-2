//
//  ViewController.swift
//  homework 10
//
//  Created by Owen Sabol on 4/23/20.
//  Copyright © 2020 Owen Sabol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var favSnack: UITextField!
    @IBOutlet weak var results: UITextView!

    
    @IBAction func saveResults(_ sender: Any) {
    }
    let csvLine:String = "\(firstName.text!),\(lastName.text!),\(favSnack.text!)\n"
    
    let paths =
        NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory,FileManager.SearchPathDomainMask.userDomainMask, true)
    let docDir:String=paths[0]
    let resultFile:String=(docDir as NSString).appendingPathComponent("results.csv")
    
    if !FileManager.default.fileExists(atPath: resultsFile)
    {
    FileManager.default.createFile(atPath: resultsFile,contents: nil, attributes: nil
    }
    
    let fileHandle:FileHandle=FileHandle(forUpdatingPath:resultFile)!
    fileHandle.seekToEndOfFile()
    fileHandle.write(csvLine.data(using: String.Encoding.utf8)!)
    fileHandle.closeFile()
    
    firstName.text = ""
    lastName.text = ""
    favSnack.text = ""
    
    
    @IBAction func displayResults(_ sender: Any) {
   let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory,FileManager.SearchPathDomainMask.userDomainMask, true)
    let docDir:String=paths[0] as String
    
    let resultFile:String=(docDir as NSString).appenidingPathComponent("results.csv")
    
    if FileManager.default.fileExists(atPath: resultsFile)
    {
    let fileHandle:FileHandle = FileHandle(forReadingAtPath:resultsFile)!
    let resultsData:String!=NSString(data: fileHandle.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    fileHandle.closeFile()
    
    results?.text=resultsData
    {
    else
    }
    {
    //file does not exist
    }
    }
    
    
    
    
    
    
    
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }







