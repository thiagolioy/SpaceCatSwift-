//
//  TitleScene.swift
//  SpaceCatSwift
//
//  Created by Thiago Lioy on 7/29/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

import SpriteKit
import AVFoundation


class TitleScene: SKScene {

    var pressStartSFX:SKAction?
    var backgroundMusic:AVAudioPlayer?
    
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
        pressStartSFX = SKAction.playSoundFileNamed("PressStart.caf", waitForCompletion: false)
        let url = NSBundle.mainBundle().URLForResource("StartScreen", withExtension: "mp3")
        backgroundMusic = AVAudioPlayer(contentsOfURL: url, error: nil)
        backgroundMusic!.numberOfLoops = -1
        backgroundMusic!.prepareToPlay()
    }
    
    
    override func didMoveToView(view: SKView) {
      backgroundMusic!.play()
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        runAction(pressStartSFX)
        backgroundMusic!.stop()

        let gamePlayScene = GamePlayScene(size: self.frame.size)
        let transition = SKTransition.fadeWithDuration(1.0)
        self.view.presentScene(gamePlayScene, transition: transition)        
    }
}