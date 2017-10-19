import UIKit
import CoreLocation

protocol SecondViewControllerDelegate {
    
    func somethingChanged()
    
}
// the var to change
var changeThis = "not changed"
class SecondViewController: UIViewController {

    var location: CLLocation!
    var delegate: SecondViewControllerDelegate?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
      //  print(location)
    }
    @IBAction func back(_ sender: Any) {
        //checking to see if the var is no longer equal to the orignal vaule if so pass the vaule using the somethingChanged func
        if changeThis != "not changed"{
            delegate?.somethingChanged()
        }
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func switchIsSwitched(_ sender: Any) {
        //changing the var when the switch is switched
        changeThis = "changed"
    }
    
    
}
