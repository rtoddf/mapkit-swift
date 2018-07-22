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
    var camera = MKMapCamera()
    var pitch = 0
    var isOn = false
    
    //MARK: Outlets
    @IBOutlet weak var changeMapType: UIButton!
    @IBOutlet weak var changePitch: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    
    //MARK: - Actions
    @IBAction func changeMapType(_ sender: UIButton) {
        switch mapView.mapType {
        case .standard:
            mapView.mapType = .satellite
        case .satellite:
            mapView.mapType = .hybrid
        case .hybrid:
            mapView.mapType = .satelliteFlyover
        case .satelliteFlyover:
            mapView.mapType = .hybridFlyover
        case .hybridFlyover:
            mapView.mapType = .standard
        default:
            mapView.mapType = .standard
        }
    }
    
    @IBAction func changePitch(_ sender: UIButton) {
        pitch  = (pitch + 15) % 90
        // degrees is option 0
        sender.setTitle("\(pitch)º", for: .normal)
        mapView.camera.pitch = CGFloat(pitch)
    }
    
    @IBAction func toggleMapFeatures(_ sender: UIButton) {
        isOn = !mapView.showsPointsOfInterest
        mapView.showsPointsOfInterest = isOn
        mapView.showsScale = isOn
        mapView.showsCompass = isOn
        mapView.showsTraffic = isOn
    }
    
    @IBAction func findHere(_ sender: UIButton) {
        
    }
    
    @IBAction func findPizza(_ sender: UIButton) {
        
    }

    @IBAction func locationPicker(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        
        switch index {
        case 0:
            // the louvre
            coordinate2D = CLLocationCoordinate2DMake(48.8606105, 2.3376447)
            updateMapCamera(heading: 245.0, altitude: 1000.0)
            return
        case 1:
            //  The British Museum In London
            coordinate2D = CLLocationCoordinate2DMake(51.5194537, -0.1268876)
            updateMapCamera(heading: 245.0, altitude: 1000.0)
            // the return is so the updateMapRegion function doesn't execute
            return
        case 2:
            //  The Metropolitan Museum Of Art In New York City
            coordinate2D = CLLocationCoordinate2DMake(40.7794366, -73.963244)
            updateMapCamera(heading: 12.0, altitude: 1000.0)
            return
        case 3:
            //  The Art Institute of Chicago
            coordinate2D = CLLocationCoordinate2DMake(41.8796405, -87.6237068)
            updateMapCamera(heading: 180.0, altitude: 1000.0)
            return
        case 4:
            //  The Vasa Museum In Stockholm
            coordinate2D = CLLocationCoordinate2DMake(59.3280132, 18.0914612)
            updateMapCamera(heading: 245.0, altitude: 1000.0)
            return
        default:
            coordinate2D = CLLocationCoordinate2DMake(48.8606105, 2.3376447)
        }
        
        updateMapRegion(rangeSpan: 100)
    }
    
    //MARK: - Instance Methods
    func updateMapRegion(rangeSpan:CLLocationDistance) {
        let region = MKCoordinateRegionMakeWithDistance(coordinate2D, rangeSpan, rangeSpan)
        mapView.region = region
    }
    
    func updateMapCamera(heading:CLLocationDirection, altitude:CLLocationDistance) {
        camera.centerCoordinate = coordinate2D
        camera.heading = heading
        camera.altitude = altitude
        camera.pitch = 0.0
        changePitch.setTitle("0º", for: .normal)
        mapView.camera = camera
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

