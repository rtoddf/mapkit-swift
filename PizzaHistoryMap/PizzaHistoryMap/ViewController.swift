/* --- Coordinate information -----
            Lat,long                      
 The Louvre Museum In Paris
 @48.8606105,2.3376447
 
 The British Museum In London
 @51.5194537,-0.1268876
 
 The Metropolitan Museum Of Art In New York City
 @40.7794366,-73.963244
 
 The Art Institute of Chicago
 @41.8796405,-87.6237068
 
 The Vasa Museum In Stockholm
 @59.3280132,18.0914612
 --- */



import UIKit
import MapKit

class ViewController: UIViewController {
    
    //MARK: - Properties and outlets
    var coordinate2D = CLLocationCoordinate2DMake(48.8606105, 2.3376447)
    
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
        print("click")
        let index = sender.selectedSegmentIndex
        
        switch index {
        case 0:
            // the louvre
           coordinate2D = CLLocationCoordinate2DMake(48.8606105, 2.3376447)
        case 1:
            //  The British Museum In London
            coordinate2D = CLLocationCoordinate2DMake(51.5194537, -0.1268876)
        case 2:
            //  The Metropolitan Museum Of Art In New York City
            coordinate2D = CLLocationCoordinate2DMake(40.7794366, -73.963244)
        case 3:
            //  The Art Institute of Chicago
            coordinate2D = CLLocationCoordinate2DMake(41.8796405, -87.6237068)
        case 4:
            //  The Vasa Museum In Stockholm
            coordinate2D = CLLocationCoordinate2DMake(59.3280132, 18.0914612)
        default:
           coordinate2D = CLLocationCoordinate2DMake(48.8606105, 2.3376447)
        }
        print("\(coordinate2D)")
        updateMapRegion(rangeSpan: 100)
    }
    
    //MARK: - Instance Methods
    func updateMapRegion(rangeSpan:CLLocationDistance) {
        let region = MKCoordinateRegionMakeWithDistance(coordinate2D, rangeSpan, rangeSpan)
        mapView.region = region
    }
    
    //MARK: Map setup
    
    //MARK: Annotations
    
    //MARK: Overlays
    
    //MARK: Location
    
    //MARK: Find
    
    //MARK: Directions
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMapRegion(rangeSpan: 100)
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

