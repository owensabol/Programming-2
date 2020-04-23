//
//  ViewController.swift
//  Homeowrk 7 (actually 7)
//
//  Created by Owen Sabol on 3/31/20.
//  Copyright © 2020 Owen Sabol. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var myWebView: WKWebView!
    let url = URL (string : "https://www.mlb.com/pirates")
    myWebView.loadRequest(URLRequest(url: url!))
    
   
    
    
    
    
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    let locMan: CLLocationManager = CLLocationManager()
    var startLocation: CLLocation!
    
    let pncparkLatitude: CLLocationDegrees = 40.4469
    let pncparkLongitude: CLLocationDegrees = 80.0057
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let newLocation: CLLocation = locations[0]
        NSLog("Something is happening")
        
    if newLocation.horizontalAccuracy >= 0 {
        let pncPark:CLLocation = CLLocation(latitude: pncparkLatitude, longitude: pncparkLongitude)
        let delta: CLLocationDistance = pncPark.distance(from: newLocation)
        let miles: Double = (delta * 0.000621371) + 0.5
        if miles < 3 {
            locMan.stopUpdatingLocation()
            distanceLabel.text = "Enjoy\nPNC Park!"
        } else{
            let commaDelimited = NumberFormatter()
            commaDelimited.numberStyle = NumberFormatter.Style.decimal
            distanceLabel.text=commaDelimited.string(from: NSNumber(value: miles))! + "miles to PNC Park!"
        }
        }
    
    
    
    
    
    
    
    
    
    
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locMan.delegate = self
        locMan.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        locMan.distanceFilter = 1609; //mile in meters
        locMan.requestWhenInUseAuthorization()
        locMan.startUpdatingLocation()
        startLocation = nil
    
    }


        
        
        
        
        
        
}

}
