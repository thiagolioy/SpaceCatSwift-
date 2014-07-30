//
//  GamePlayScene.swift
//  SpaceCatSwift
//
//  Created by Thiago Lioy on 7/29/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

import  SpriteKit
import AVFoundation

class GamePlayScene : SKScene {
//    @property (nonatomic) NSTimeInterval lastUpdateTimeInterval;
//    @property (nonatomic) NSTimeInterval timeSinceEnemyAdded;
//    @property (nonatomic) NSTimeInterval totalGameTime;
//    @property (nonatomic) NSInteger minSpeed;
//    @property (nonatomic) NSTimeInterval addEnemyTimeInterval;



    var damageSFX:SKAction?
    var explodeSFX:SKAction?
    var laserSFX:SKAction?
    
    var backgroundMusic:AVAudioPlayer?
    var gameOverMusic:AVAudioPlayer?
    
    var gameOver:Bool?
    var restart:Bool?
    var gameOverDisplayed:Bool?
    
    
    init(size: CGSize){
        super.init(size: size)
        setupEnvironment()
        setupBackground()
        setupPlayer()
        setupSounds()
    }
    
    func setupEnvironment(){
        //    self.lastUpdateTimeInterval = 0;
        //    self.timeSinceEnemyAdded = 0;
        //    self.addEnemyTimeInterval = 1.5;
        //    self.totalGameTime = 0;
        //    self.minSpeed = THSpaceDogMinSpeed;

        gameOver = false
        restart = false
        gameOverDisplayed = false
    }

    func setupBackground(){
        let background = SKSpriteNode(imageNamed: "background_1")
        let (x:CGFloat , y:CGFloat) = (CGRectGetMidX(self.frame),CGRectGetMidY(self.frame))
        background.position = CGPointMake(x, y)
        self.addChild(background)
    }
    
    func setupPlayer(){
        let machine = MachineNode.machine(CGPointMake(CGRectGetMidX(self.frame), 12))
        addChild(machine)
        
        let spaceCat = SpaceCatNode.spaceCat(CGPointMake(machine.position.x,
            machine.position.y - 2))
        addChild(spaceCat)
    }
    
    func setupSounds(){
        setupBackgroundMusic()
        setupSoundEffects()
    }
    func setupSoundEffects(){
        damageSFX = SKAction.playSoundFileNamed("Damage.caf", waitForCompletion: false)
        explodeSFX = SKAction.playSoundFileNamed("Explode.caf", waitForCompletion: false)
        laserSFX = SKAction.playSoundFileNamed("Laser.caf", waitForCompletion: false)
    }
    
    func setupBackgroundMusic(){
        let url = NSBundle.mainBundle().URLForResource("Gameplay", withExtension: "mp3")
        backgroundMusic = AVAudioPlayer(contentsOfURL: url, error: nil)
        backgroundMusic!.numberOfLoops = -1
        backgroundMusic!.prepareToPlay()
        
        let gameOverUrl = NSBundle.mainBundle().URLForResource("GameOver", withExtension: "mp3")
        gameOverMusic = AVAudioPlayer(contentsOfURL: gameOverUrl, error: nil)
        gameOverMusic!.numberOfLoops = -1
        gameOverMusic!.prepareToPlay()
    }

    
    override func didMoveToView(view: SKView!) {
        backgroundMusic!.play()
    }
    
    
}
