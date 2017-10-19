//
//  TriviaVC.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit

class TriviaVC: UIViewController {

    @IBOutlet weak var triviaLabel: UILabel!
    let randomTrivia = TriviaProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let showQuestion = randomTrivia.randomQuestion()
        triviaLabel.text = showQuestion[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
