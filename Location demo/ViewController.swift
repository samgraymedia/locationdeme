import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    var userLocation: CLLocation?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Next" {
            guard let userLocation = userLocation else { return }
            let destinationViewController = segue.destination as! SecondViewController
            destinationViewController.delegate = self
            destinationViewController.location = userLocation
        }
    }

}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
     //   print("Got some location data")
        guard let location = locations.last else {
            return
        }
        userLocation = location
    
    }
}

extension ViewController: SecondViewControllerDelegate {
    func somethingChanged() {
        //print the changed var
        print(changeThis)
    }
}
