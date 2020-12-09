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
}


