import UIKit

class SecondViewController: UIViewController {

    weak var delegate: SecondViewControllerDelegate?
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var goBackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func goBackButtonClicked(_ sender: Any) {
        delegate?.statusPass(status: textField.text)
        self.dismiss(animated: true, completion: nil)
    }
}

protocol SecondViewControllerDelegate: class {
    func statusPass(status: String?)
}
