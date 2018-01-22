//
//  TestGameScene.swift
//  TestDragDrop
//
//  Created by djchai on 1/21/18.
//  Copyright © 2018 Phyllis Wong. All rights reserved.
//

import SpriteKit

class TestGameScene: SKScene {
    
    var player = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        // Set up your scene here
        
        player = SKSpriteNode(color: UIColor.cyan, size: CGSize(width: 90, height: 90))
        player.position = CGPoint(x: 0, y: 0)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Called when a touch begins
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
}
