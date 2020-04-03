//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit





class gardenScene: SKScene {
    
    
    
    
    
    
    
    //TODAS AS CENAS
    var homeButton = SKSpriteNode(imageNamed: "homeBt")
     var settingsButton = SKSpriteNode(imageNamed: "settingsBt")
        var sounds = SKAudioNode()
    var moving = false
    var homeX = SKTexture(imageNamed: "homeBtX")
var game = SKSpriteNode(imageNamed: "gameImg")
    //Esta cena
    var fence = SKSpriteNode(imageNamed: "fence")
      var formigueiro = SKSpriteNode(imageNamed: "formigueiro")
     var owl = SKSpriteNode(imageNamed: "owl1")
    var ant = SKSpriteNode(imageNamed: "ant1")
     var vaso = SKSpriteNode(imageNamed: "vaso")
     var gardenPath = SKSpriteNode(imageNamed: "gardenPath")
      //var bee = SKSpriteNode(imageNamed: "bee")
     // var grama = SKSpriteNode(imageNamed: "grama")
      var tree = SKSpriteNode(imageNamed: "tree")
    var treeGround = SKSpriteNode(imageNamed: "ground")
      var apple = SKSpriteNode(imageNamed: "apple")
     var apple2 = SKSpriteNode(imageNamed: "apple")
     var apple3 = SKSpriteNode(imageNamed: "apple")
     var apple4 = SKSpriteNode(imageNamed: "apple")
     var apple5 = SKSpriteNode(imageNamed: "apple")
      var leafTree = (SKEmitterNode(fileNamed: "leafParticle"))!
      var beeParticle = (SKEmitterNode(fileNamed: "beeParticle"))!
     var ladybug = SKSpriteNode(imageNamed: "ladybug1")
      var colmeia = SKSpriteNode(imageNamed: "colmeia")
     var teia = SKSpriteNode(imageNamed: "teia")
     var dogBall = SKSpriteNode(imageNamed: "dogBall")
     var dog = SKSpriteNode(imageNamed: "dog1")
     var afterFence = SKSpriteNode(imageNamed: "afterFence")
      var rabo = SKSpriteNode(imageNamed: "rabo")
    var mouth = SKSpriteNode(imageNamed: "dogBall")
      var spider = SKSpriteNode(imageNamed: "spider1")
     var snail = SKSpriteNode(imageNamed: "snail1")
     var flor = SKSpriteNode(imageNamed: "flor1")
    
    
    var backgroundMusic = SKAudioNode()
    let dogTexture1 = SKTexture(imageNamed: "dog1")
    let dogTextureWithBall = SKTexture(imageNamed: "dogWithBall")
     let spiderTexture1 = SKTexture(imageNamed: "spider1")
      let spiderTexture2 = SKTexture(imageNamed: "spider2")
      let spiderTexture3 = SKTexture(imageNamed: "spider3")
      let spiderTexture4 = SKTexture(imageNamed: "spider4")
    let ladybugTexture1 = SKTexture(imageNamed: "ladybug1")
    let ladybugTexture2 = SKTexture(imageNamed: "ladybug2")
    let ladybugTexture3 = SKTexture(imageNamed: "ladybug3")
    let ladybugTexture4 = SKTexture(imageNamed: "ladybug4")
       let ladybugTextureSpider = SKTexture(imageNamed: "ladybugSpider")
    let snailTexture1 = SKTexture(imageNamed: "snail1")
    let snailTexture2 = SKTexture(imageNamed: "snail2")
    let snailTexture3 = SKTexture(imageNamed: "snail3")
    let scariedSnailTexture1 = SKTexture(imageNamed: "scariedSnail1")
    let scariedSnailTexture2 = SKTexture(imageNamed: "scariedSnail2")
    let scariedSnailTexture3 = SKTexture(imageNamed: "scariedSnail3")
      let appleTexture = SKTexture(imageNamed: "apple")
     let groundTexture = SKTexture(imageNamed: "ground")
    let florTexture1 = SKTexture(imageNamed: "flor1")
    let florTexture2 = SKTexture(imageNamed: "flor2")
    let florTexture3 = SKTexture(imageNamed: "flor3")
    let florTexture4 = SKTexture(imageNamed: "flor4")
    let florTexture5 = SKTexture(imageNamed: "flor5")
    let florTexture6 = SKTexture(imageNamed: "flor6")
    let florTexture7 = SKTexture(imageNamed: "flor7")
    let deadFlowerTexture1 = SKTexture(imageNamed: "deadFlower1")
    let deadFlowerTexture2 = SKTexture(imageNamed: "deadFlower2")
    let deadFlowerTexture3 = SKTexture(imageNamed: "deadFlower3")
    let deadFlowerTexture4 = SKTexture(imageNamed: "deadFlower4")
    let owlTexture1 = SKTexture(imageNamed: "owl1")
    let owlTexture2 = SKTexture(imageNamed: "owl2")
    let owlTexture3 = SKTexture(imageNamed: "owl3")
    let owlTexture4 = SKTexture(imageNamed: "owl4")
    let owlTexture5 = SKTexture(imageNamed: "owl5")
    let owlTexture6 = SKTexture(imageNamed: "owl6")
    let animatedOwlTexture1 = SKTexture(imageNamed: "animatedOwl1")
    let animatedOwlTexture2 = SKTexture(imageNamed: "animatedOwl2")
    let animatedOwlTexture3 = SKTexture(imageNamed: "animatedOwl3")
    let animatedOwlTexture4 = SKTexture(imageNamed: "animatedOwl4")
    let animatedOwlTexture5 = SKTexture(imageNamed: "animatedOwl5")
    let antTexture1 = SKTexture(imageNamed: "ant1")
    let antTexture2 = SKTexture(imageNamed: "ant2")
    let antTexture3 = SKTexture(imageNamed: "ant3")
    let antTexture4 = SKTexture(imageNamed: "ant4")
    
   
    
    
    
    
    let dogBark = SKAction.playSoundFileNamed("ballBark", waitForCompletion: false)
     let bark = SKAction.playSoundFileNamed("bark", waitForCompletion: false)
   // let leafSound = SKAction.playSoundFileNamed("leafWind", waitForCompletion: false)
     let bark2 = SKAction.playSoundFileNamed("bark2", waitForCompletion: false)
      let snailSound = SKAction.playSoundFileNamed("snailSoundRun", waitForCompletion: false)
      let spiderEatSound = SKAction.playSoundFileNamed("spiderEats", waitForCompletion: false)
      let spiderSound = SKAction.playSoundFileNamed("spiderHiss", waitForCompletion: false)
    let spiderWalks = SKAction.playSoundFileNamed("spiderWalk", waitForCompletion: false)
     let colmeiaSound = SKAction.playSoundFileNamed("colmeiaShakeSound", waitForCompletion: false)
     let appleFallSound = SKAction.playSoundFileNamed("appleFall", waitForCompletion: false)
    
    
    
    var intersectedBall = false
    var spiderActing = false
    var snailRunning = false
    var leafTreeAdded = false
    var colmeiaShaking = false
    var florActing = false
    var owlActing = false
     var apple1Acting = false
     var apple2Acting = false
     var apple3Acting = false
     var apple4Acting = false
     var apple5Acting = false

    let wait = SKAction.wait(forDuration: 5)
     let wait2 = SKAction.wait(forDuration: 3)
      let waitApple = SKAction.wait(forDuration: 0.52)
     let waitApple2 = SKAction.wait(forDuration: 0.65)
    let fadeOutAlpha = SKAction.fadeAlpha(to: 0, duration: 5)
     let fadeInAlpha = SKAction.fadeAlpha(to: 1, duration: 3)
   
   
      var spiderToDo = Int(arc4random_uniform(3))
      var barkSelect = Int(arc4random_uniform(2))
     var owlToDo = Int(arc4random_uniform(2))
    
    
    
    override func didMove(to view: SKView) {
        
        physicsWorld.gravity = CGVector(dx: -0.5, dy: -10)
        
     
        
      
        
      
     
        
       
        
        

       
        //PARTE COMUM A TODOS AS SCENES:
        
        settingsButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        settingsButton.position = CGPoint(x: view.frame.width-view.frame.width/40, y: view.frame.height-view.frame.width/40)
        settingsButton.zPosition = 10
        settingsButton.alpha = 0.7
       // self.addChild(settingsButton)
        
        homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        homeButton.position = CGPoint(x:0+view.frame.width/40, y: view.frame.height-view.frame.width/40)
        homeButton.zPosition = 10
        homeButton.alpha = 0.7
        self.addChild(homeButton)
        
       
        fence.size = CGSize(width: view.frame.width*1.01, height: view.frame.width/7.85)
        fence.position = CGPoint(x: 0+view.frame.width/2, y: view.frame.height*0.9-view.frame.width/15.7)
        fence.zPosition = 3
        self.addChild(fence)
        
        formigueiro.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.06)
        formigueiro.position = CGPoint(x: view.frame.width*0.67, y: view.frame.height*0.11)
        formigueiro.zPosition = 3
        self.addChild(formigueiro)
        
        
        treeGround.size = CGSize(width: view.frame.width, height: view.frame.height/20)
        treeGround.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2.58)
        treeGround.physicsBody = SKPhysicsBody(texture: groundTexture, size: treeGround.size)
        treeGround.physicsBody?.isDynamic = false
        treeGround.alpha = 0
       addChild(treeGround)
        
        gardenPath.size = CGSize(width: view.frame.width, height: view.frame.height*0.44)
        gardenPath.position = CGPoint(x: view.frame.width/2, y: view.frame.height*0.38)
        addChild(gardenPath)
        
        apple.position = CGPoint(x: (self.view?.frame.width)!*0.72, y: (self.view?.frame.height)!*0.86-(self.view?.frame.width)!/15.7)
        apple2.position = CGPoint(x: (self.view?.frame.width)!*0.88, y: (self.view?.frame.height)!*0.85-(self.view?.frame.width)!/15.7)
        apple3.position = CGPoint(x: (self.view?.frame.width)!*0.81, y: (self.view?.frame.height)!*0.99-(self.view?.frame.width)!/15.7)
        apple4.position = CGPoint(x: (self.view?.frame.width)!*0.94, y: (self.view?.frame.height)!*0.97-(self.view?.frame.width)!/20)
        apple5.position = CGPoint(x: (self.view?.frame.width)!*0.67, y: (self.view?.frame.height)!*0.97-(self.view?.frame.width)!/20)

        apple.size = CGSize(width: view.frame.width/22, height: view.frame.width/18.48)
        apple.alpha = 0.93
        apple.zPosition = 10
        self.addChild(apple)
        
        apple2.size = CGSize(width: view.frame.width/22, height: view.frame.width/18.48)
        apple2.alpha = 0.93
        apple2.zPosition = 10
        self.addChild(apple2)
        
        apple3.size = CGSize(width: view.frame.width/22, height: view.frame.width/18.48)
        apple3.alpha = 0.93
        apple3.zPosition = 10
        self.addChild(apple3)
        
        
        apple4.size = CGSize(width: view.frame.width/22, height: view.frame.width/18.48)
        apple4.alpha = 0.93
        apple4.zPosition = 10
        self.addChild(apple4)
        
        apple5.size = CGSize(width: view.frame.width/22, height: view.frame.width/18.48)
        apple5.alpha = 0.93
        apple5.zPosition = 10
        self.addChild(apple5)
        
        //Tamanhos dos corpos físicos das maçãs
         apple.physicsBody = SKPhysicsBody(texture: appleTexture, size: apple.size)
         apple2.physicsBody = SKPhysicsBody(texture: appleTexture, size: apple.size)
         apple3.physicsBody = SKPhysicsBody(texture: appleTexture, size: apple.size)
         apple4.physicsBody = SKPhysicsBody(texture: appleTexture, size: apple.size)
         apple5.physicsBody = SKPhysicsBody(texture: appleTexture, size: apple.size)
        //Não respeitaram a gravidade (=false -> nenhuma força ou vetor vai afetar a maçã):
          apple.physicsBody?.isDynamic = false
          apple2.physicsBody?.isDynamic = false
          apple3.physicsBody?.isDynamic = false
          apple4.physicsBody?.isDynamic = false
          apple5.physicsBody?.isDynamic = false
        //Rotate
        apple.zRotation = .pi/15
          apple2.zRotation = -.pi/15
          apple3.zRotation = -.pi/15
          apple4.zRotation = .pi/15
          apple5.zRotation = -.pi/15
        
        
        ant.size = CGSize(width: view.frame.width*0.04, height: view.frame.width*0.03)
        ant.position = CGPoint(x:view.frame.width*0.05, y: view.frame.height*0.52)
        ant.zPosition = 11
        let antPath = SKAction.move(to: CGPoint(x:view.frame.width*0.3, y: view.frame.height*0.48), duration: 10)
        let antRotate = SKAction.rotate(toAngle: -.pi/8, duration: 0.18)
         let antPath2 = SKAction.move(to: CGPoint(x:view.frame.width*0.63, y: view.frame.height*0.27), duration: 10)
        let antPath3 = SKAction.move(to: CGPoint(x:view.frame.width+view.frame.width*0.05, y: view.frame.height*0.24), duration: 10)
          let antRotate2 = SKAction.rotate(toAngle: 0, duration: 0.18)
        let antBack = SKAction.move(to: CGPoint(x: -view.frame.width*0.05, y: view.frame.height*0.52), duration: 0)
        let rotationBack = SKAction.rotate(toAngle: 0, duration: 0)
        
        let antTexturesWalk = [antTexture1,antTexture2,antTexture3,antTexture4,antTexture3,antTexture2]
        let antWalk = SKAction.repeatForever(SKAction.animate(with: antTexturesWalk, timePerFrame: 0.08))
        self.addChild(ant)
        ant.run(antWalk)
        ant.run(SKAction.repeatForever(SKAction.sequence([antPath,antRotate,antPath2,antRotate2,antPath3, antBack,rotationBack])))
        
        
        tree.size = CGSize(width: view.frame.width/2, height: view.frame.width/1.86)
        tree.position = CGPoint(x: 0+view.frame.width*0.8, y: view.frame.height/1.3)
        tree.zPosition = 5
        self.addChild(tree)
        
        
        
        let owlAnimationTextures = [owlTexture1, owlTexture2, owlTexture3, owlTexture4,owlTexture5, owlTexture6,owlTexture5, owlTexture4, owlTexture3, owlTexture2]
        let owlAnimation = SKAction.repeatForever(SKAction.animate(with: owlAnimationTextures, timePerFrame: 0.23))
        owl.size = CGSize(width: view.frame.width/10.3*0.8, height: view.frame.width/8*0.8)
        owl.position = CGPoint(x: view.frame.width*0.75, y: view.frame.height*0.615)
        owl.zPosition = 9
        owl.run(owlAnimation)
        self.addChild(owl)
        
        
        
        
        
        
        
        
        //Emissor de partículas da espuma
       leafTree = (SKEmitterNode(fileNamed: "leafParticle"))!
        leafTree.zPosition = 4
        leafTree.position = CGPoint(x: tree.frame.minX, y: tree.frame.midY+view.frame.height/10)
        
      
        beeParticle.zPosition = 5
        beeParticle.position = CGPoint(x: view.frame.width*0.976-fence.frame.width/11.5, y: view.frame.height*0.57)
        addChild(beeParticle)
      
        
       
        
        
        
        
        
        
        
        teia.size = CGSize(width: fence.frame.height*1.07, height: fence.frame.height)
        teia.position = CGPoint(x: fence.frame.height*1.07/2, y: view.frame.height*0.9-view.frame.width/15.7)
        teia.zPosition = 4
        self.addChild(teia)
        
        colmeia.size = CGSize(width: fence.frame.width/11.5, height: fence.frame.width/9.2)
        colmeia.position = CGPoint(x: view.frame.width*0.97-fence.frame.width/11.5, y: view.frame.height*0.6)
        colmeia.zPosition = 4
        self.addChild(colmeia)
        
     
        
        snail.size = CGSize(width: fence.frame.height/3, height: fence.frame.height/3.5)
        snail.position = CGPoint(x: -fence.frame.height*1.07/4, y: view.frame.height*0.785-view.frame.width/15.7)
        snail.zPosition = 3
        let snailTextures = [snailTexture1,snailTexture2,snailTexture3]
         let snailTextures2 = [snailTexture3,snailTexture2,snailTexture1]
        let snailAnimation = SKAction.repeatForever(SKAction.sequence([SKAction.animate(with: snailTextures, timePerFrame: 0.12),SKAction.animate(with: snailTextures2, timePerFrame: 0.12) ]))
        let snailPathGo = SKAction.repeatForever(SKAction.sequence([SKAction.move(to: CGPoint(x: view.frame.width+fence.frame.height/3, y: view.frame.height*0.5-view.frame.width/15.7), duration: 60), SKAction.move(to: CGPoint(x: -fence.frame.height*1.07/4, y: view.frame.height*0.785-view.frame.width/15.7), duration: 0)]))
        self.addChild(snail)
        snail.run(snailAnimation)
        snail.run(snailPathGo)

       
        
        let spiderSequence = [spiderTexture1,spiderTexture2,spiderTexture3,spiderTexture4]
        let spiderSequenceReverse = [spiderTexture4,spiderTexture3,spiderTexture2,spiderTexture1]
        let spiderAnimate = SKAction.animate(with: spiderSequence, timePerFrame: 0.1)
         let spiderAnimateReverse = SKAction.animate(with: spiderSequenceReverse, timePerFrame: 0.1)
        spider.size = CGSize(width: fence.frame.height/2, height: fence.frame.height/3)
        spider.position = CGPoint(x: fence.frame.height*1.07/2, y: view.frame.height*0.9-view.frame.width/15.7)
        spider.zPosition = 5
        self.addChild(spider)
        spider.run(SKAction.repeatForever(SKAction.sequence([spiderAnimate,spiderAnimateReverse])))
        
        ladybug.size = CGSize(width: fence.frame.height/2*0.5, height: fence.frame.height/3*0.5)
        ladybug.position = CGPoint(x: -fence.frame.height/2*0.5, y: view.frame.height*0.85-view.frame.width/15.7)
        ladybug.zPosition = 5
        let ladybugAnimate = SKAction.repeatForever(SKAction.sequence([SKAction.animate(with: [ladybugTexture1,ladybugTexture2,ladybugTexture3,ladybugTexture4], timePerFrame: 0.08), SKAction.animate(with: [ladybugTexture4,ladybugTexture3,ladybugTexture2,ladybugTexture1], timePerFrame: 0.08)]))
        addChild(ladybug)
        ladybug.run(ladybugAnimate)
        
     
        
        
        
        afterFence.size = CGSize(width: view.frame.width, height: view.frame.height/3.7)
        afterFence.position = CGPoint(x: 0+view.frame.width/2, y: view.frame.height*0.91-view.frame.width/15.7+view.frame.height/20)
        afterFence.zPosition = 2
        self.addChild(afterFence)
        
        
        vaso.size = CGSize(width: view.frame.width/12, height: view.frame.height/10)
        vaso.position = CGPoint(x: view.frame.width*0.9, y: view.frame.height*0.18)
        vaso.zPosition = 12
        addChild(vaso)
        
        
        flor.size = CGSize(width: view.frame.width*0.03, height: view.frame.height*0.12)
        flor.position = CGPoint(x: view.frame.width*0.9, y: view.frame.height*0.28)
        flor.zPosition = 12
        flor.alpha = 0
        self.addChild(flor)
        
        dogBall.size = CGSize(width: view.frame.width/12, height: view.frame.width/35)
        dogBall.position = CGPoint(x: view.frame.width*0.2, y: view.frame.height*0.05)
        dogBall.zPosition = 7
        self.addChild(dogBall)
        
        mouth.size = CGSize(width: view.frame.width/60, height: view.frame.width/60)
        mouth.position = CGPoint(x: view.frame.width/9.6, y:view.frame.width*0.15)
        mouth.zPosition = 10
        mouth.alpha = 0
        self.addChild(mouth)
        
        dog.size = CGSize(width: view.frame.width/9, height: view.frame.width/4.5)
        dog.position = CGPoint(x: view.frame.width/10, y: view.frame.height*0.1+view.frame.width/16.4)
        dog.zPosition = 6
        self.addChild(dog)
        
        rabo.size = CGSize(width: view.frame.width/15, height: view.frame.width/30)
        rabo.position = CGPoint(x: dog.frame.maxX, y: view.frame.height*0.055+view.frame.width/16.4)
        let rotateRabo = SKAction.sequence([ SKAction.rotate(byAngle: .pi/6, duration: 0.12), SKAction.rotate(byAngle: -.pi/6, duration: 0.12)])
        let rotateRaboAnimation = SKAction.repeatForever(rotateRabo)
        rabo.zPosition = 3
        self.addChild(rabo)
        rabo.run(rotateRaboAnimation)
  
        
        
      
         if UIDevice.current.userInterfaceIdiom == .phone {
            //abaxaqui
            mouth.setScale(1.2)
            vaso.xScale = 0.75
 rabo.position = CGPoint(x: dog.frame.maxX-view.frame.width*0.01, y: view.frame.height*0.055+view.frame.width/16.4)
  dogBall.position = CGPoint(x: view.frame.width*0.205, y: view.frame.height*0.09)
            fence.yScale = 0.8
            teia.setScale(0.8)
            spider.setScale(0.8)
            tree.setScale(0.85)
            apple.setScale(0.9)
              apple2.setScale(0.9)
              apple3.setScale(0.9)
              apple4.setScale(0.9)
              apple5.setScale(0.9)
            dog.setScale(0.88)
            rabo.setScale(0.9)
            owl.setScale(0.85)
            colmeia.setScale(0.85)
            dogBall.setScale(0.9)
            leafTree.setScale(0.7)
            beeParticle.setScale(0.8)
            
              owl.position = CGPoint(x: view.frame.width*0.76, y: view.frame.height*0.62)
            
            spider.position = CGPoint(x:view.frame.width*0.054, y: view.frame.height*0.81)
            
            
               mouth.position = CGPoint(x: view.frame.width/9.6, y:view.frame.width*0.12)
            tree.position = CGPoint(x: 0+view.frame.width*0.8, y: view.frame.height*0.8)
             teia.position = CGPoint(x: fence.frame.height*1.07/2, y: view.frame.height*0.93-view.frame.width/15.7)
             afterFence.position = CGPoint(x: 0+view.frame.width/2, y: view.frame.height-afterFence.frame.height*0.5)
               fence.position = CGPoint(x: 0+view.frame.width/2, y: view.frame.height*0.93-view.frame.width/15.7)
              beeParticle.position = CGPoint(x: view.frame.width*0.976-fence.frame.width/11.5, y: view.frame.height*0.59)
              treeGround.position = CGPoint(x: view.frame.width/2, y: view.frame.height*0.25)
            apple.position = CGPoint(x: (self.view?.frame.width)!*0.72, y: (self.view?.frame.height)!*0.84-apple.frame.height*0.5)
            apple2.position = CGPoint(x: (self.view?.frame.width)!*0.88, y: (self.view?.frame.height)!*0.83-apple.frame.height*0.5)
            apple3.position = CGPoint(x: (self.view?.frame.width)!*0.81, y: (self.view?.frame.height)!*0.98-apple.frame.height*0.5)
            apple4.position = CGPoint(x: (self.view?.frame.width)!*0.94, y: (self.view?.frame.height)!*0.97-apple.frame.height*0.5)
            apple5.position = CGPoint(x: (self.view?.frame.width)!*0.67, y: (self.view?.frame.height)!*0.96-apple.frame.height*0.5)
            
             colmeia.position = CGPoint(x: view.frame.width*0.97-fence.frame.width/11.5, y: view.frame.height*0.62)
            homeButton.size = CGSize(width: view.frame.width/17, height: view.frame.width/17)
            homeButton.position = CGPoint(x:0+view.frame.width/34, y: view.frame.height-view.frame.width/34)
            if view.bounds.width == 812.0{
                  homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
                  spider.position = CGPoint(x:view.frame.width*0.054, y: view.frame.height*0.785)
                    colmeia.position = CGPoint(x: view.frame.width*0.97-fence.frame.width/11.5, y: view.frame.height*0.58)
                  beeParticle.position = CGPoint(x: view.frame.width*0.976-fence.frame.width/11.5, y: view.frame.height*0.54)
                homeButton.texture = homeX
                  owl.position = CGPoint(x: view.frame.width*0.76, y: view.frame.height*0.585)
                homeButton.position = CGPoint(x:homeButton.frame.width*0.8, y: view.frame.height-homeButton.frame.height*0.7)
            }
            
        }
      
       
        
        
        //Adiciona a música inicial de fundo
        
        if let musicURL = Bundle.main.url(forResource: "gardenBackground", withExtension: "mp3") {
            backgroundMusic = SKAudioNode(url: musicURL)
            if (UserDefaults.standard.bool(forKey: "sound")) == true{
                self.addChild(backgroundMusic)
            }
        }

        
        
        
        game.size = CGSize(width: formigueiro.frame.width*0.75, height: formigueiro.frame.height*0.6)
       game.position =  CGPoint(x: 0, y: -game.frame.height*0.1)
        game.zPosition = 11
        game.alpha = 0.7
        formigueiro.addChild(game)
        
        
        
        
        
        
        scene?.scaleMode = .resizeFill
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         var appleFallAction = SKAction.sequence([waitApple,appleFallSound,wait2, fadeOutAlpha])
        if (UserDefaults.standard.bool(forKey: "sound")) == false{
            appleFallAction = SKAction.sequence([waitApple,wait2, fadeOutAlpha])
        }
        
        let touch = touches.first!
        
        //Voltar à Home
        if homeButton.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "scenesSelector")!
            scene.scaleMode = .resizeFill
            let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
        if dogBall.contains(touch.location(in: self)){
       moving = true
        }
        
        if formigueiro.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "antGame")!
            scene.scaleMode = .resizeFill
           let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
          if ant.contains(touch.location(in: self)){
            ant.removeAllActions()
            let antTexturesWalk = [self.antTexture1,self.antTexture2,self.antTexture3,self.antTexture4,self.antTexture3,self.antTexture2]
            let antWalk = SKAction.repeatForever(SKAction.animate(with: antTexturesWalk, timePerFrame: 0.08))
            
            
             
         
              let scaleRunning = SKAction.scale(to: 0.7, duration: 2)
            
            let runAntAction = SKAction.move(to: CGPoint(x: (view?.frame.width)!*0.67, y: (view?.frame.height)!*0.11+(view?.frame.width)!*0.03), duration: 2)
          
            if ant.frame.minX <= (view?.frame.width)!*0.5 {
            ant.zRotation = -.pi/6
                 ant.run(scaleRunning)
            }else  if ant.frame.minX >= (view?.frame.width)!/2 && ant.frame.minX <= (view?.frame.width)!*0.67+(view?.frame.width)!*0.016 {
                ant.zRotation = -.pi/3.5
                 ant.run(scaleRunning)
            }else  if ant.frame.minX > (view?.frame.width)!*0.67+(view?.frame.width)!*0.016{
                ant.xScale = -0.9
                  ant.zRotation = .pi/4
                
            }
          
              self.ant.run(antWalk)
            ant.run(runAntAction, completion:
                {
                self.ant.setScale(1)
                    self.ant.zRotation = 0
                    self.ant.position = CGPoint(x: -(self.view?.frame.width)!*0.05, y: (self.view?.frame.height)!*0.52)
                    let antPath = SKAction.move(to: CGPoint(x:(self.view?.frame.width)!*0.3, y: (self.view?.frame.height)!*0.48), duration: 10)
                    let antRotate = SKAction.rotate(toAngle: -.pi/8, duration: 0.18)
                    let antPath2 = SKAction.move(to: CGPoint(x:(self.view?.frame.width)!*0.63, y: (self.view?.frame.height)!*0.27), duration: 10)
                    let antPath3 = SKAction.move(to: CGPoint(x:(self.view?.frame.width)!+(self.view?.frame.width)!*0.05, y: (self.view?.frame.height)!*0.24), duration: 10)
                    let antRotate2 = SKAction.rotate(toAngle: 0, duration: 0.18)
                    let antBack = SKAction.move(to: CGPoint(x: -(self.view?.frame.width)!*0.05, y: (self.view?.frame.height)!*0.52), duration: 0)
                    let rotationBack = SKAction.rotate(toAngle: 0, duration: 0)
                    
                    let antTexturesWalk = [self.antTexture1,self.antTexture2,self.antTexture3,self.antTexture4,self.antTexture3,self.antTexture2]
                    let antWalk = SKAction.repeatForever(SKAction.animate(with: antTexturesWalk, timePerFrame: 0.08))
                    
                    self.ant.run(antWalk)
                    self.ant.run(SKAction.repeatForever(SKAction.sequence([antPath,antRotate,antPath2,antRotate2,antPath3, antBack,rotationBack])))
        })
        }
        
        
        
        
        if owl.contains(touch.location(in: self)){
            owlToDo = Int(arc4random_uniform(2))
            
            if owlActing == false {
                 owlActing = true
                if owlToDo == 0 {
          let actionTextures = [animatedOwlTexture1,animatedOwlTexture2,animatedOwlTexture3,animatedOwlTexture4,animatedOwlTexture5,animatedOwlTexture4,animatedOwlTexture3,animatedOwlTexture2,owlTexture1]
            let animationAction = SKAction.animate(with: actionTextures, timePerFrame: 0.12)
                    owl.run(animationAction, completion:
                        {self.owlActing = false})
                }else if owlToDo == 1 {
            let owlRotate = SKAction.rotate(byAngle: .pi, duration: 0.3)
            var owlGo = SKAction.moveTo(y:  (view?.frame.height)!*0.49, duration: 0.3)
             var owlGoBack = SKAction.moveTo(y:  (view?.frame.height)!*0.615, duration: 0.3)
                    
                    
                    
                      if UIDevice.current.userInterfaceIdiom == .phone {
                      //    owl.position = CGPoint(x: view.frame.width*0.76, y: view.frame.height*0.62)
                        owlGo = SKAction.moveTo(y:  (view?.frame.height)!*0.48, duration: 0.3)
                        owlGoBack = SKAction.moveTo(y:  (view?.frame.height)!*0.62, duration: 0.3)
                        
                        //if iphone X
                          if view?.bounds.width == 812.0{
                            owlGo = SKAction.moveTo(y:  (view?.frame.height)!*0.41, duration: 0.3)
                            owlGoBack = SKAction.moveTo(y:  (view?.frame.height)!*0.585, duration: 0.3)
                      
                        }
                    }
                  
     
            owl.run(owlRotate)
            owl.run(SKAction.sequence([owlGo, wait]), completion:
                {
                  self.owl.run(owlRotate.reversed())
                  self.owl.run(owlGoBack)
                self.owlActing = false

            })
                }
            }
        }
        
        
        
         if dog.contains(touch.location(in: self)){
                 if intersectedBall == false {
            barkSelect = Int(arc4random_uniform(2))
            if barkSelect == 0 {
                if (UserDefaults.standard.bool(forKey: "sound")) == true{
            dog.run(bark)
                }
            }else if barkSelect == 1 {
                if (UserDefaults.standard.bool(forKey: "sound")) == true{
                dog.run(bark2)
                }
            }
            }
        }
        
        if colmeia.contains(touch.location(in: self)){
            if colmeiaShaking == false{
                colmeiaShaking = true
                  beeParticle.particleBirthRate = 7
            let colmeiaShake = SKAction.sequence([SKAction.rotate(byAngle: .pi/9, duration: 0.067),SKAction.rotate(byAngle: -.pi*0.222222222, duration: 0.067), SKAction.rotate(byAngle: .pi/9, duration: 0.067)])
           let colmeiaShakeRepeat = SKAction.repeat(colmeiaShake, count: 10)
                 if (UserDefaults.standard.bool(forKey: "sound")) == true{
                colmeia.run(colmeiaSound)
                }
                colmeia.run(colmeiaShakeRepeat, completion:
                    {self.colmeiaShaking = false
                         self.beeParticle.particleBirthRate = 2
                }
                )
            }
        }
        
        if apple.contains(touch.location(in: self)){
          
          
            
            
            if apple1Acting == false {
                apple1Acting = true
        apple.physicsBody?.isDynamic = true
            
                
            apple.run(appleFallAction, completion:
                {
                    self.apple.zRotation = .pi/15
                    self.apple.physicsBody?.isDynamic = false
                    self.apple.position = CGPoint(x: (self.view?.frame.width)!*0.72, y: (self.view?.frame.height)!*0.86-(self.view?.frame.width)!/15.7)
                    if UIDevice.current.userInterfaceIdiom == .phone {
                        self.apple.position = CGPoint(x: (self.view?.frame.width)!*0.72, y: (self.view?.frame.height)!*0.84-self.apple.frame.height*0.5)
                    }
                    self.apple.run(self.fadeInAlpha, completion:
                        {self.apple1Acting = false}
                    )
                    
            })
            }
        }
        
      
        
        if apple2.contains(touch.location(in: self)){
            if apple2Acting == false {
                apple2Acting = true
            apple2.physicsBody?.isDynamic = true
           apple2.run(appleFallAction, completion:
                {
                         self.apple2.zRotation = -.pi/15
                    self.apple2.physicsBody?.isDynamic = false
                   self.apple2.position = CGPoint(x: (self.view?.frame.width)!*0.88, y: (self.view?.frame.height)!*0.84-(self.view?.frame.width)!/15.7)
                    if UIDevice.current.userInterfaceIdiom == .phone {
                     
                       self.apple2.position = CGPoint(x: (self.view?.frame.width)!*0.88, y: (self.view?.frame.height)!*0.83-self.apple.frame.height*0.5)
                     
                    }
                    self.apple2.run(self.fadeInAlpha, completion:
                        {self.apple2Acting = false}
                    )
                    
            })
            }
        }
        
        
        
        if apple3.contains(touch.location(in: self)){
            if apple3Acting == false {
                apple3Acting = true
            apple3.physicsBody?.isDynamic = true
             self.apple3.run(appleFallAction, completion:
                {
                      self.apple3.zRotation = -.pi/15
                    self.apple3.physicsBody?.isDynamic = false
                    self.apple3.position = CGPoint(x: (self.view?.frame.width)!*0.81, y: (self.view?.frame.height)!*0.99-(self.view?.frame.width)!/15.7)
                    if UIDevice.current.userInterfaceIdiom == .phone {
                     
                        self.apple3.position = CGPoint(x: (self.view?.frame.width)!*0.81, y: (self.view?.frame.height)!*0.98-self.apple.frame.height*0.5)
                      
                    }
                    self.apple3.run(self.fadeInAlpha, completion:
                        {self.apple3Acting = false}
                    )
                    
             })}
        }
        
        
        
        if apple4.contains(touch.location(in: self)){
            if apple4Acting == false {
                apple4Acting = true
apple4.physicsBody?.isDynamic = true
            apple4.run(appleFallAction, completion:
                {
                      self.apple4.zRotation = .pi/15
                    self.apple4.physicsBody?.isDynamic = false
                    self.apple4.position = CGPoint(x: (self.view?.frame.width)!*0.94, y: (self.view?.frame.height)!*0.97-(self.view?.frame.width)!/20)
                    if UIDevice.current.userInterfaceIdiom == .phone {
                    
                        self.apple4.position = CGPoint(x: (self.view?.frame.width)!*0.94, y: (self.view?.frame.height)!*0.97-self.apple.frame.height*0.5)
                      
                    }
                    self.apple4.run(self.fadeInAlpha,completion:
                        {self.apple4Acting = false}
                    )
                    
            })}
        }
        
        
        
        if apple5.contains(touch.location(in: self)){
            if apple5Acting == false {
                apple5Acting = true
            apple5.physicsBody?.isDynamic = true
             apple5.run(appleFallAction, completion:
                {
                      self.apple5.zRotation = -.pi/15
                    self.apple5.physicsBody?.isDynamic = false
                    self.apple5.position = CGPoint(x: (self.view?.frame.width)!*0.67, y: (self.view?.frame.height)!*0.97-(self.view?.frame.width)!/20)
                    if UIDevice.current.userInterfaceIdiom == .phone {
                      
                        self.apple5.position = CGPoint(x: (self.view?.frame.width)!*0.67, y: (self.view?.frame.height)!*0.96-self.apple.frame.height*0.5)
                    }
                    self.apple5.run(self.fadeInAlpha,completion:
                        {self.apple5Acting = false}
                    )
                    
             })}
        }
        
        

        if tree.contains(touch.location(in: self)) && colmeia.contains(touch.location(in: self)) || snail.contains(touch.location(in: self)) || apple.contains(touch.location(in: self)) || apple2.contains(touch.location(in: self)) || apple3.contains(touch.location(in: self)) || apple4.contains(touch.location(in: self)) || apple5.contains(touch.location(in: self)) || owl.contains(touch.location(in: self)){
       
    }else if tree.contains(touch.location(in: self)){
            if leafTreeAdded == false {
                if (UserDefaults.standard.bool(forKey: "sound")) == true{
                    sounds = SKAudioNode(fileNamed: "leafWind.mp3")
                    sounds.autoplayLooped = false
                    addChild(sounds)
                    sounds.run(SKAction.play())
                }
                leafTree.resetSimulation()
                leafTreeAdded = true
                leafTree.alpha = 1
         self.addChild(leafTree)
                leafTree.run(wait, completion:
                    {
                        
                        self.leafTree.run(self.fadeOutAlpha, completion:
                            {
                                self.leafTree.removeFromParent()
                                self.leafTreeAdded = false
                                
                        }
                        )
                        
                     
                })
    
            }
        }
        
        
        
        
          if vaso.contains(touch.location(in: self)){
            if florActing == false{
                florActing = true
      flor.alpha = 1
        let florTextures = [florTexture1,florTexture2,florTexture3,florTexture4,florTexture5,florTexture6,florTexture7]
             let deadFlowerTextures = [deadFlowerTexture1,deadFlowerTexture2,deadFlowerTexture3,deadFlowerTexture4]
            let florAction = SKAction.animate(with: florTextures, timePerFrame: 0.4)
            flor.run(SKAction.sequence([florAction, wait]), completion:
                {
             let florActionDead = SKAction.animate(with: deadFlowerTextures, timePerFrame: 0.8)
                    self.flor.run(florActionDead,completion:
                        {self.flor.run(self.fadeOutAlpha, completion:
                            { self.florActing = false
                    })}
                    )
        })
           
            }
            
            
        }
        
          if snail.contains(touch.location(in: self)){
            if snailRunning == false {
                snailRunning = true
          
              let scariedSnailTextures = [scariedSnailTexture1,scariedSnailTexture2,scariedSnailTexture3]
             let scariedSnailTextures2 = [scariedSnailTexture3,scariedSnailTexture2,scariedSnailTexture1]
            let scariedSnailAnimation = SKAction.repeatForever(SKAction.sequence([SKAction.animate(with: scariedSnailTextures, timePerFrame: 0.08),SKAction.animate(with: scariedSnailTextures2, timePerFrame: 0.08) ]))
                let scariedSnailPathGo = SKAction.sequence([SKAction.move(to: CGPoint(x: (view?.frame.width)!+fence.frame.height/3, y: (view?.frame.height)!*0.5-(view?.frame.width)!/15.7), duration: 2.7), SKAction.move(to: CGPoint(x: -fence.frame.height*1.07/4, y: (view?.frame.height)!*0.785-(view?.frame.width)!/15.7), duration: 0)])
            snail.removeAllActions()
        snail.run(scariedSnailAnimation)
                if (UserDefaults.standard.bool(forKey: "sound")) == true{

                      snail.run(snailSound)
                }
            snail.run(scariedSnailPathGo, completion:
                {
                    self.snailRunning = false
                    self.snail.removeAllActions()
                    let snailTextures = [self.snailTexture1,self.snailTexture2,self.snailTexture3]
                    let snailTextures2 = [self.snailTexture3,self.snailTexture2,self.snailTexture1]
                    let snailAnimation = SKAction.repeatForever(SKAction.sequence([SKAction.animate(with: snailTextures, timePerFrame: 0.12),SKAction.animate(with: snailTextures2, timePerFrame: 0.12) ]))
                    let snailPathGo = SKAction.repeatForever(SKAction.sequence([SKAction.move(to: CGPoint(x: (self.view?.frame.width)!+self.fence.frame.height/3, y: (self.view?.frame.height)!*0.5-(self.view?.frame.width)!/15.7), duration: 60), SKAction.move(to: CGPoint(x: -self.fence.frame.height*1.07/4, y: (self.view?.frame.height)!*0.785-(self.view?.frame.width)!/15.7), duration: 0)]))
                self.snail.run(snailAnimation)
                   self.snail.run(snailPathGo)
            
            })}
        }
        
       
        
        if spider.contains(touch.location(in: self)){
            if spiderActing == false {
            spiderToDo = Int(arc4random_uniform(3))
            if spiderToDo == 0 {
                        spiderActing = true
            var spiderMoves = SKAction.sequence([ SKAction.moveTo(y: (view?.frame.height)!*0.86-(view?.frame.width)!/15.7, duration: 0.15), SKAction.rotate(byAngle: .pi, duration: 0.18),  SKAction.moveTo(y: (view?.frame.height)!*0.9-(view?.frame.width)!/15.7, duration: 0.15), SKAction.rotate(byAngle: .pi, duration: 0.18)])
                
                if UIDevice.current.userInterfaceIdiom == .phone {
                    spiderMoves = SKAction.sequence([ SKAction.moveTo(y: (view?.frame.height)!*0.86-(view?.frame.width)!/15.7, duration: 0.15), SKAction.rotate(byAngle: .pi, duration: 0.18),  SKAction.moveTo(y: (view?.frame.height)!*0.81, duration: 0.15), SKAction.rotate(byAngle: .pi, duration: 0.18)])
                    if view?.bounds.width == 812.0{
                          spiderMoves = SKAction.sequence([ SKAction.moveTo(y: (view?.frame.height)!*0.86-(view?.frame.width)!/15.7, duration: 0.15), SKAction.rotate(byAngle: .pi, duration: 0.18),  SKAction.moveTo(y: (view?.frame.height)!*0.785, duration: 0.15), SKAction.rotate(byAngle: .pi, duration: 0.18)])
                      
                    }
                  
                  
                }
                 if (UserDefaults.standard.bool(forKey: "sound")) == true{
                spider.run(spiderWalks)
                }
                spider.run(spiderMoves, completion:
                    {self.spiderActing = false}
                )
            }else if spiderToDo == 2 {
                   spiderActing = true
                let spiderRotate = SKAction.rotate(toAngle: .pi*2, duration: 0.51)
                 if (UserDefaults.standard.bool(forKey: "sound")) == true{
                spider.run(spiderSound)
                }
                spider.run(spiderRotate, completion:
                    {self.spiderActing = false}
                )
            }else if spiderToDo == 1{
                 spiderActing = true
                let ladyGo = SKAction.move(to: CGPoint(x: fence.frame.height*1.07/1.6, y: (view?.frame.height)!*0.85-(view?.frame.width)!/15.7), duration: 2)
                let spiderRotateToGet = SKAction.rotate(byAngle: .pi/9, duration: 0.08)
                let spiderGet = SKAction.move(to: CGPoint(x: fence.frame.height*1.07/1.6, y: (view?.frame.height)!*0.87-(view?.frame.width)!/15.7), duration: 0.2)
                var spiderBack = SKAction.move(to:CGPoint(x: fence.frame.height*1.07/2, y: (view?.frame.height)!*0.9-(view?.frame.width)!/15.7), duration: 0.2)
                
                if UIDevice.current.userInterfaceIdiom == .phone {
                   
                    spiderBack = SKAction.move(to:CGPoint(x:(view?.frame.width)!*0.054, y: (view?.frame.height)!*0.81), duration: 0.2)
                      if view?.bounds.width == 812.0{
                          spiderBack = SKAction.move(to:CGPoint(x:(view?.frame.width)!*0.054, y: (view?.frame.height)!*0.785), duration: 0.2)
                    }

                }
                
                
                self.ladybug.run(ladyGo, completion:
                    {
                       self.ladybug.texture = self.ladybugTextureSpider
                        self.ladybug.removeAllActions()
                        
                        var spiderak = SKAction.sequence([spiderRotateToGet,spiderGet,self.spiderEatSound])
                        if (UserDefaults.standard.bool(forKey: "sound")) == false{
spiderak = SKAction.sequence([spiderRotateToGet,spiderGet])
                        }
                        self.spider.run(spiderak ,completion:
                            {self.ladybug.alpha = 0
                                self.spider.run(SKAction.sequence([spiderRotateToGet.reversed(), spiderBack]), completion:
                                    { self.spiderActing = false
                                        self.ladybug.position = CGPoint(x: -self.fence.frame.height/2*0.5, y: (self.view?.frame.height)!*0.85-(self.view?.frame.width)!/15.7)
                                        self.ladybug.alpha = 1
                                        let ladybugAnimate = SKAction.repeatForever(SKAction.sequence([SKAction.animate(with: [self.ladybugTexture1,self.ladybugTexture2,self.ladybugTexture3,self.ladybugTexture4], timePerFrame: 0.08), SKAction.animate(with: [self.ladybugTexture4,self.ladybugTexture3,self.ladybugTexture2,self.ladybugTexture1], timePerFrame: 0.08)]))
                                        self.ladybug.run(ladybugAnimate)
                                })})})}}}
                
            
            
        
    
        
        
        
        
        
        
        

        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        moving = false 
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
         let touch = touches.first!
        
        let position = touch.location(in: self)
        if moving == true{
       dogBall.position = position
        }
        
    }
    
    
   
  
    
    
    
    override func update(_ currentTime: TimeInterval) {
        
        
       
        
        
        
        
        
        
        if intersectedBall == false {
            
            
            if dogBall.intersects(mouth){
                intersectedBall = true
                moving = false
                dogBall.alpha = 0
                if (UserDefaults.standard.bool(forKey: "sound")) == true {
                  self.dog.run(self.dogBark)
                }
                dog.texture = SKTexture(imageNamed: "dogWithBall")
                dog.run(wait, completion:
                    {
                        
                   
                         self.dog.texture = SKTexture(imageNamed: "dog1")
                        let fadeIn = SKAction.fadeAlpha(to: 1, duration: 1)
                        self.dogBall.position = CGPoint(x: (self.view?.frame.width)!/10+(self.view?.frame.width)!/13.6, y: (self.view?.frame.height)!*0.05)
                                 if UIDevice.current.userInterfaceIdiom == .phone {
                                      self.dogBall.position = CGPoint(x: (self.view?.frame.width)!*0.205, y: (self.view?.frame.height)!*0.09)
                        }
                 
                        self.dogBall.run(fadeIn, completion:
                            {
                                    self.intersectedBall = false
                        }
                        )
                    
       
                }  
                )
            }
        }
}
    
    
  


}
