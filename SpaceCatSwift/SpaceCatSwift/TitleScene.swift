//
//  TitleScene.swift
//  SpaceCatSwift
//
//  Created by Thiago Lioy on 7/29/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

import SpriteKit


class TitleScene: SKScene {

    var pressStartSFX:SKAction?
//    var backgroundMusic:AVAudioPlayer?
    
    init(size: CGSize) {
        /* Setup your scene here */
        super.init(size: size)

        let background = SKSpriteNode(imageNamed:"splash_1")
        let (x:CGFloat , y:CGFloat) = (CGRectGetMidX(self.frame),CGRectGetMidY(self.frame))
        background.position = CGPointMake(x, y)
        self.addChild(background)
        startBackgroundMusic();
        

    }
    
    func startBackgroundMusic(){
//        self.pressStartSFX = [SKAction playSoundFileNamed:@"PressStart.caf" waitForCompletion:NO];
        //
        //        NSURL *url = [[NSBundle mainBundle] URLForResource:@"StartScreen" withExtension:@"mp3"];
        //
        //        self.backgroundMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        //        self.backgroundMusic.numberOfLoops = -1;
        //        [self.backgroundMusic prepareToPlay];
    }
    
    
    override func didMoveToView(view: SKView) {
      
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
    
    }
}