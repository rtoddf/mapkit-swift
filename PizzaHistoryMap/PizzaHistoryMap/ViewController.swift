//
//  ViewController.swift
//  PizzaHistoryMap
//
//  Created by Steven Lipton on 7/18/17.
//  Copyright © 2017 Steven Lipton. All rights reserved.
//

/* --- Coordinate information -----
            Lat,long                      
 Naples: 40.8367321,14.2468856
 New York: 40.7216294 , -73.995453
 Chicago: 41.892479 , -87.6267592          
 Chatham: 42.4056555,-82.1860369         
 Beverly Hills: 34.0674607,-118.3977309
 
 -->Challenges!!<----
 208 S. Beverly Drive Beverly Hills CA:34.0647691,-118.3991328
 2121 N. Clark St Chicago IL: 41.9206921,-87.6375361
 
 For region monitoring:
 latitude: 37.33454235, longitude: -122.03666775000001
 --- */



import UIKit
import MapKit

class ViewController: UIViewController {
    
    //MARK: - Properties and outlets
    
    
    //MARK: Outlets
    @IBOutlet weak var changeMapType: UIButton!
    @IBOutlet weak var changePitch: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    
    //MARK: - Actions
    @IBAction func changeMapType(_ sender: UIButton) {
    }
    
    @IBAction func changePitch(_ sender: UIButton) {
       
    }
    @IBAction func toggleMapFeatures(_ sender: UIButton) {
    }
    
    @IBAction func findHere(_ sender: UIButton) {
    }
    
    @IBAction func findPizza(_ sender: UIButton) {
    }

    @IBAction func locationPicker(_ sender: UISegmentedControl) {
    }
    //MARK: - Instance Methods
    
    //MARK: Map setup
    
    //MARK: Annotations
    
    //MARK: Overlays
    
    //MARK: Location
    
    //MARK: Find
    
    //MARK: Directions
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Delegates
    //MARK: Annotation delegates
    //MARK: Overlay delegates
    //MARK: Location Manager delegates
    

}

