import UIKit
import CoreLocation

protocol SecondViewControllerDelegate {
    
    func somethingChanged()
    
}

class SecondViewController: UIViewController {

    var location: CLLocation!
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        print(location)
    }
    @IBAction func back(_ sender: Any) {
        delegate?.somethingChanged()
        dismiss(animated: true, completion: nil)
    }
    @IBAction func switchIsSwitched(_ sender: Any) {
        
    }
    
    
}
