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
 
    override func didMove(to view: SKView) {
        anchorPoint = CGPoint.zero
        
        let background = SKSpriteNode(imageNamed: "background")
        let xMid = frame.midX
        let yMid = frame.midY
        background.position = CGPoint(x: xMid, y: yMid)
        addChild(background)
    }
        
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
