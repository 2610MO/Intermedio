//
//  ViewController.swift
//  Traffic Segues
//
//  Created by Luis Servicio on 24/05/18.
//  Copyright © 2018 Luis Morelos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

