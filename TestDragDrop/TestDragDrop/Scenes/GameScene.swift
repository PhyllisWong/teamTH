//
//  GameScene.swift
//  TestDragDrop
//
//  Created by Phyllis Wong on 1/21/18.
//  Copyright © 2018 Phyllis Wong. All rights reserved.
//

import SpriteKit
import AVFoundation

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    var background = SKSpriteNode(imageNamed: "gold-sand.jpg")
    var audio: AVAudioPlayer?
    
    var player = SKSpriteNode()
    var matchShape: SKShapeNode!
    
    var isDragging = false
    
    override func didMove(to view: SKView) {

        
        matchShape = childNode(withName: "matchShape") as! SKShapeNode
        
        player = SKSpriteNode(color: UIColor.cyan, size: CGSize(width: 90, height: 90))
        player.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        player.position = CGPoint(x: 750, y: 350)
        
        addChild(player)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // only perform these actions if the user touches on the shape
        if let touch = touches.first {
            if player.contains(touch.location(in: self)) {
                
                // increase the player size to que the user that they touches the piece
                player.size = CGSize(width: 100, height: 100)
                isDragging = true
                
                // Fetch the sound data set.
                if let asset = NSDataAsset(name: "cartoon_voice_says_yahoo") {
                    do {
                    // Use NSDataAssets's data property to access the audio file stored in cartoon voice says yahoo.
                        audio = try AVAudioPlayer(data: asset.data, fileTypeHint: ".mp3")
                        // Play the above sound file
                        audio?.play()
                    } catch let error as NSError {
                        // Should print...
                        print(error.localizedDescription)
                    }
                }
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isDragging {
            if let touch = touches.first {
                movePlayerTo(location: touch.location(in: self))
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        isDragging = false
        
        // reset the player size to the original size
        player.size = CGSize(width: 90, height: 90)
        
        // Get the coordinates of the player when touch ends
        let xCoord = player.position.x
        let yCoord = player.position.y
        
        // Get the range around the matchShape
        let upperBoundx = matchShape.position.x + 30
        let upperBoundy = matchShape.position.y + 30
        let lowerBoundx = matchShape.position.x - 30
        let lowerBoundy = matchShape.position.y - 30

        // Check if the player is within the range of coordinates of the matchShape
        if lowerBoundx <= xCoord && xCoord <= upperBoundx {
            if lowerBoundy <= yCoord && yCoord <= upperBoundy {
                
                // Spin the player to show that the user solved the challenge
                player.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 0.5)))
                print("Success")
            }
        }
    }
    
    
    func movePlayerTo(location: CGPoint) {
        player.position = location
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
//    override func didMove(to view: SKView) {
    
        // Get label node from scene and store it for use later
//        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
//        if let label = self.label {
//            label.alpha = 0.0
//            label.run(SKAction.fadeIn(withDuration: 2.0))
//        }
//
//        // Create shape node to use during mouse interaction
//        let w = (self.size.width + self.size.height) * 0.05
//        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
//
//        if let spinnyNode = self.spinnyNode {
//            spinnyNode.lineWidth = 2.5
//
//            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
//            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
//                                              SKAction.fadeOut(withDuration: 0.5),
//                                              SKAction.removeFromParent()]))
//        }
//    }
    
    
//    func touchDown(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.green
//            self.addChild(n)
//        }
//    }
//
//    func touchMoved(toPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.blue
//            self.addChild(n)
//        }
//    }
//
//    func touchUp(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.red
//            self.addChild(n)
//        }
//    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let label = self.label {
//            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
//        }
//
//        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
//    }
    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
//    }
    
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
//
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
    
    
//    override func update(_ currentTime: TimeInterval) {
//        // Called before each frame is rendered
//    }
    
}
