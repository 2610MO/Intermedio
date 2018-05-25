//
//  ViewController.swift
//  Traffic Segues 2
//
//  Created by Luis Servicio on 24/05/18.
//  Copyright © 2018 Luis Morelos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var segueSwitch: UISwitch!
    
    @IBAction func greenButtonTaped(_ sender: Any) {
        
        if segueSwitch.isOn{
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
    
    @IBAction func yelloButtonTaped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "yellow", sender: nil)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

