//
//  ViewController.swift
//  testPassData
//
//  Created by Malik Kuru on 03/12/2017.
//  Copyright © 2017 Malik Kuru. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func goButtonClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "second") as? SecondViewController
        controller?.delegate = self
        self.present(controller!, animated: true, completion: nil)
        
    }
    
}

extension FirstViewController: SecondViewControllerDelegate {
    func statusPass(status: String?) {
        textLabel.text = status
    }
}

extension UIViewController {
    public func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc public func dismissKeyboard() {
        view.endEditing(true)
    }
    // call  `hideKeyboardWhenTappedAround` on `ViewDidLoad`
} 

