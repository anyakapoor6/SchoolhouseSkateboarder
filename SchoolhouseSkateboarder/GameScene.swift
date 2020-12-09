//
//  GameScene.swift
//  SchoolhouseSkateboarder
//
//  Created by Anya Kapoor on 12/1/20.
//  Copyright © 2020 Anya Kapoor. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
 
    var bricks = [SKSpriteNode]()
    var brickSize = CGSize.zero
    var scrollSpeed: CGFloat = 5.0
    
    let skater = Skater(imageNamed: "skater")
    
    override func didMove(to view: SKView) {
    
        anchorPoint = CGPoint.zero
        
        let background = SKSpriteNode(imageNamed: "background")
        let xMid = frame.midX
        let yMid = frame.midY
        background.position = CGPoint(x: xMid, y: yMid)
        addChild(background)
        
        resetSkater()
        addChild(skater)
    
    }
    
    func resetSkater() {
        
        let skaterX = frame.midX / 2.0
        let skaterY = skater.frame.height / 2.0 + 64.0
        skater.position = CGPoint(x: skaterX, y: skaterY)
        skater.zPosition = 10
        skater.minimumY = skaterY
    }
    
    func spwanBrick(atPosition position: CGPoint) -> SKSpriteNode {
        let brick = SKSpriteNode(imageNamed: "sidewalk")
        brick.position = position
        brick.zPosition = 8
        addChild(brick)
        
        brickSize = brick.size
        bricks.append(brick)
        return brick
    }
        
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
