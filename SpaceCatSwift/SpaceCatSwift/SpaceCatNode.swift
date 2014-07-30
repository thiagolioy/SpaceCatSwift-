//
//  SpaceCatNode.swift
//  SpaceCatSwift
//
//  Created by Thiago Lioy on 7/29/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

import SpriteKit

class SpaceCatNode: SKSpriteNode {
    
    class func spaceCat(position:CGPoint!)-> SpaceCatNode {
        let spaceCat = SpaceCatNode(imageNamed: "spacecat_1")
        spaceCat.position = position;
        spaceCat.anchorPoint = CGPointMake(0.5, 0);
        spaceCat.name = "SpaceCat";
        spaceCat.zPosition = 9;
        return spaceCat
    }
    
}