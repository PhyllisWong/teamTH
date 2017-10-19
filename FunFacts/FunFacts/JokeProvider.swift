//
//  JokeProvider.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import GameKit

struct JokeProvider {
    let jokes = [
        ["Why did the mushroom get invited to the party?", "Because he was a fun guy"],
        ["I'm reading a book about anti-gravity.", "It's impossible to put down"],
        ["If you're American when you go into the bathroom, and American when you come out, what are you when you're in there?", "European"],
        ["Did you know the first French Fries weren't actually cooked in France?", "They were cooked in Greece"],
        ["Want to hear a joke about a peice of paper?", "Never mind...it's tearable"],
        ["I just watched a documentary about beavers.", "It was the best dam show I ever saw"],
        ["If you see a robbery at an Apple Store...", "Does that make you an iWitness?"],
        ["A ham sandwhich walks into a bar and orders a beer. The bartender says...", "I'm sorry, we don't serve food here"],
        ["What is Forest Gump's password?", "1forrest1"],
        ["Why did the Clydesdale give the pony a glass of water?", "Because he was a little horse"],
        ["If you boil a clown...", "Do you get a laughing stock?"],
        ["Finally realized why my plant sits around doing nothing all day...", "He loves his pot."],
        ["Toys R Us is filing for bankruptcy.", "Four more times and it will qualify them to be President"],
        ["Don't look at the eclipse through a colander.", "You'll strain your eyes."]
        ]
    
    func randomJoke() -> [String] {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: jokes.count)
        return jokes[randomNumber]
    }
    
//    func randomJoke() -> String {
//
//
//        return "Why did the mushroom get invited to the party?"
//    }
}

//let newJoke = JokeProvider()
//let randNumber = newJoke.randomNum()




