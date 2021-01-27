//
//  Skater.swift
//  SchoolhouseSkateboarder
//
//  Created by Anya Kapoor on 12/8/20.
//  Copyright © 2020 Anya Kapoor. All rights reserved.
//

import SpriteKit

class Skater: SKSpriteNode {
    var velocity = CGPoint.zero
    var minimumY: CGFloat = 0.0
    var jumpSpeed: CGFloat = 20.0
    var isOnGround = true
    
    func setupPhysicsBody() {
        
        if let skaterTexture = texture {
            physicsBody = SKPhysicsBody(texture: skaterTexture, size: size)
            physicsBody?.isDynamic = true
            physicsBody?.density = 6.0
            physicsBody?.allowsRotation = false
            physicsBody?.allowsRotation = true
            physicsBody?.angularDamping = 1.0
            physicsBody?.categoryBitMask = PhysicsCategory.skater
            physicsBody?.collisionBitMask = PhysicsCategory.brick
            physicsBody?.contactTestBitMask = PhysicsCategory.brick | PhysicsCategory.gem 
        }
    }
    
    func createSparks(){
        let bundle = Bundle.main
        if let sparksPath = bundle.path(forResource: "sparks", ofType: "sks"){
                let sparksNode = NSKeyedUnarchiver.unarchivedObject(ofClass: SKEmitterNode, from: sparksPath)
                sparksNode.position = CGPoint(x: 0.0, y: -50.0)
                addChild(sparksNode)
                let waitAction = SKAction.wait(forDuration: 0.5)
                let removeAction = SKAction.removeFromParent()
                let waitThenRemove = SKAction.sequence([waitAction, removeAction])
                sparksNode.run(waitThenRemove)
            }
        }
    }

