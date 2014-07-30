//
//  MachineNode.swift
//  SpaceCatSwift
//
//  Created by Thiago Lioy on 7/29/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

import SpriteKit

class MachineNode: SKSpriteNode {
   
    class func machine(position:CGPoint!)-> MachineNode {
        let machine = MachineNode(imageNamed: "machine_1")
        machine.position = position;
        machine.anchorPoint = CGPointMake(0.5, 0);
        machine.name = "Machine";
        machine.zPosition = 8;
        
        machine.runAction(setupAnimation())
        
        return machine
    }
    
    class func setupAnimation()->SKAction{
        let textures = [SKTexture(imageNamed: "machine_1"),SKTexture(imageNamed: "machine_2")]
        let machineAnimation = SKAction.animateWithTextures(textures, timePerFrame: 0.1)
        let machineRepeat = SKAction.repeatActionForever(machineAnimation)
        return machineRepeat;
    }
    
}
