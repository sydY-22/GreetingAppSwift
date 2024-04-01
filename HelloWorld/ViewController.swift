//
//  ViewController.swift
//  HelloWorld
//
//  Created by Sydney Babb on 3/31/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func displayOutput(_ sender: Any) {
        let name = txtName.text
        let output = "Hello " + name!
        lblOutput.text = output    }
}

