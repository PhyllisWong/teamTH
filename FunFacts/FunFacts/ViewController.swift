//
//  ViewController.swift
//  FunFacts
//
//  Created by djchai on 10/16/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    let facts = ["Ants stretch when they wake up in the morning", "Ostriches can run faster than horses", "Cars are not as cool as bicycles"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = facts[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func showFact() {
        funFactLabel.text = facts[1]
    }
    
}

