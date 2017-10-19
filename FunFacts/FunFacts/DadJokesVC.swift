//
//  DadJokesVC.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import UIKit

class DadJokesVC: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var jokeLabel: UILabel!
    
    let jokeProvider = JokeProvider()

    
    @IBAction func didPressAnswer() {
        // Figure out how to display the correct joke answer for the joke
        let showJoke = jokeProvider.randomJoke()
        answerLabel.text = showJoke[1]
        answerLabel.isHidden = false
    }
    
    @IBAction func didPressAnother() {
        let showJoke = jokeProvider.randomJoke()
        jokeLabel.text = showJoke[0]
        answerLabel.isHidden = true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let showJoke = jokeProvider.randomJoke()
        jokeLabel.text = showJoke[0]
        answerLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
