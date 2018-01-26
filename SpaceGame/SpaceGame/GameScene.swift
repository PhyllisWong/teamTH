//
//  GameScene.swift
//  SpaceGame
//
//  Created by djchai on 1/25/18.
//  Copyright © 2018 Phyllis Wong. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var starfield: SKEmitterNode!
    var player: SKSpriteNode!
    
    
    
    
    override func didMove(to view: SKView) {
        
        starfield = SKEmitterNode(fileNamed: "Starfield")
        starfield.position = CGPoint(x: 0, y: 1472)
        starfield.advanceSimulationTime(10)
        starfield.zPosition = -1
        
        self.addChild(starfield)
      
    }

    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
}
