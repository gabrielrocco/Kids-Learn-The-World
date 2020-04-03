//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit

struct PhysicsCategory {
    static let Enemy : UInt32 = 1
     static let Shoot : UInt32 = 2
      static let Fly : UInt32 = 3
}


class alienGame: SKScene, SKPhysicsContactDelegate{
    var helpButton = SKSpriteNode(imageNamed: "helpBt")
    var helpX = SKTexture(imageNamed: "helpX")
var idioma = String()
var scoreLabel = SKLabelNode()
    var bestLabel = SKLabelNode()
    var isTrophy = false
    
    
    
     var instructions = SKSpriteNode(imageNamed: "alienHelp1Pt")
    var helpPt1Texture = SKTexture(imageNamed: "alienHelp1Pt")
    var helpPt2Texture = SKTexture(imageNamed: "alienHelp2Pt")
    var helpIn1Texture = SKTexture(imageNamed: "alienHelp1In")
    var helpIn2Texture = SKTexture(imageNamed: "alienHelp2In")
    var settingsOn = false
    
    var helpNumber = 1
    
    
    
       var trophy = SKSpriteNode(imageNamed: "trophie")
    //TODAS AS CENAS
    var homeButton = SKSpriteNode(imageNamed: "alienBack")
       let lifeScale = SKAction.sequence([SKAction.scale(to: 1.1, duration: 0.5),SKAction.scale(to: 1, duration: 0.5)])
    
    //Declarações
    var backgroundMusic = SKAudioNode()
     var flyAlien = SKSpriteNode(imageNamed: "flyAlien")
     var shoot = SKSpriteNode(imageNamed: "shoot")
      var enemy = SKSpriteNode(imageNamed: "enemy")
    var life1 = SKSpriteNode(imageNamed: "life")
   var life2 = SKSpriteNode(imageNamed: "life")
       var life3 = SKSpriteNode(imageNamed: "life")
    var startBt = SKSpriteNode(imageNamed: "startAlien")
    var restartBt = SKSpriteNode(imageNamed: "restartAlien")
var okBt = SKSpriteNode(imageNamed: "okAlien")
    
   


   // let alienGunSound = SKAction.playSoundFileNamed("hurt", waitForCompletion: false)
  
      let alienSpeech = SKAction.playSoundFileNamed("hurt", waitForCompletion: false)
    var score = 0
    var life = 3
  
  var  scaleTrophy = SKAction.sequence([SKAction.scale(to: 1.3, duration: 1.1), SKAction.wait(forDuration: 1.5), SKAction.scale(to: 1.4, duration: 0.4), SKAction.scale(to: 0, duration: 0.3)])
    
    //Textures
    var flyAlienTexture = SKTexture(imageNamed: "flyAlien")
    var flyAlienTexture2 = SKTexture(imageNamed: "flyAlien2")
    var flyAlienTexture3 = SKTexture(imageNamed: "flyAlien3")
     var dead = SKTexture(imageNamed: "deadAlien")
    
var gameRunning = false
    
var time2 = Double()
    var time = Int()
    var randomTime =  UInt32()

    var best = 0
    
    //Função pra criar inimigos
  func spawnEnemies(){
        enemy.name = "enemyName"
        
        if score < 5 {
            time2 = 1
        }else if score > 5 && score < 10{
            time2 = 0.9
        }else if score > 10 && score < 15{
            time2 =  0.8
        }else if score > 15 && score < 20{
            time2 =  0.7
        }else if score > 20 && score < 30{
            time2 =  0.6
        }else if score > 20 && score < 30{
            time2 =  0.5
        }else if score > 30 && score < 40{
            time2 =  0.4
        }else if score > 40 && score < 50{
            time2 =  0.3
        }else if score > 50 && score < 150{
            time2 =  0.2
        }else if score > 150{
            time2 =  0.14
        }
        
        if score > 200{
            time2 =  0.12
        }
        
     

            let timerAction = SKAction.wait(forDuration: TimeInterval(time2))
            okBt.run(timerAction, completion:
                {
                 self.spawnEnemies()
            })


    
        
       
        
        
        
        if score < 5 {
           randomTime =  arc4random_uniform(4) + 4
        }else if score > 5 && score < 10{
             randomTime = arc4random_uniform(2) + 4
        }else if score > 10 && score < 15{
           randomTime = arc4random_uniform(1) + 4
        }else if score > 15 && score < 20{
            randomTime =  4
        }else if score > 20 && score < 30{
            randomTime =  3
        }else if score > 30 && score < 55{
            randomTime = arc4random_uniform(2) + 2
        }else if score > 55 {
            randomTime = 2
        }
        
        
         enemy = SKSpriteNode(imageNamed: "enemy")
         let randomFirst2 = Int(arc4random_uniform(2))
         let randomFirst3 = Int(arc4random_uniform(2))
          enemy.size = CGSize(width: (view?.frame.width)!/7.2*0.4, height: (view?.frame.width)!/8*0.4)
         if UIDevice.current.userInterfaceIdiom == .phone {
            enemy.setScale(0.89)
        }
       var x = UInt32()
        var y = UInt32()
        
    
      
        
        
        if randomFirst3 == 0{
        if randomFirst2 == 0 {
              x = arc4random_uniform(UInt32(self.size.width))
            y = 0
        }else{
            x = 0
               y = arc4random_uniform(UInt32(self.size.height))
        }
    }else if  randomFirst3 == 1{
            if randomFirst2 == 0 {
    x = UInt32(self.size.width)
    y = arc4random_uniform(UInt32(self.size.height))
    }else{
    x = arc4random_uniform(UInt32(self.size.width))
    y = UInt32(self.size.height)
            }
    }
 
    
 
        
                  enemy.position = CGPoint(x: CGFloat(x), y:CGFloat(y))
        
        
       
        
            
        
       
enemy.physicsBody = SKPhysicsBody(rectangleOf: enemy.frame.size)
        enemy.physicsBody?.categoryBitMask = PhysicsCategory.Enemy
        enemy.physicsBody?.contactTestBitMask = PhysicsCategory.Shoot
        enemy.physicsBody?.affectedByGravity = false
        enemy.physicsBody?.isDynamic = true
     
        
        
        
     
        
        addChild(enemy)
        
        let goToAlien = SKAction.move(to: CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!/2), duration: TimeInterval(randomTime))
enemy.run(goToAlien)

        
    }
    
    
     func didBegin(_ contact: SKPhysicsContact) {

         if contact.bodyA.categoryBitMask == PhysicsCategory.Enemy && contact.bodyB.categoryBitMask == PhysicsCategory.Shoot  ||  contact.bodyA.categoryBitMask == PhysicsCategory.Shoot && contact.bodyB.categoryBitMask == PhysicsCategory.Enemy {
            contact.bodyA.node?.removeFromParent()
             contact.bodyB.node?.removeFromParent()
            score += 1
            if idioma == "portugues"{
                 scoreLabel.text = "PONTOS: \(score)"
            }else if idioma == "ingles"{
                 scoreLabel.text = "SCORE: \(score)"
            }
          
            if score>best{
                  isTrophy = true
                best = score
                if idioma == "portugues"{
                    bestLabel.text = "MELHOR: \(best)"
                }else if idioma == "ingles"{
                   bestLabel.text = "BEST: \(best)"
                }
               
            }
        }
        
        if contact.bodyA.categoryBitMask == PhysicsCategory.Enemy && contact.bodyB.categoryBitMask == PhysicsCategory.Fly   {
//END
            if gameRunning == true{
                    if (UserDefaults.standard.bool(forKey: "sound")) == true{
                flyAlien.run(alienSpeech)
                }
            }
          if life == 1{
               contact.bodyA.node?.removeFromParent()
                life = 0
                life1.removeFromParent()
             gameOver()
            }else if life == 2{
                contact.bodyA.node?.removeFromParent()
                life = 1
                life2.removeFromParent()
            }else if life == 3{
                contact.bodyA.node?.removeFromParent()
                life = 2
                life3.removeFromParent()
            }
        }
        
        if contact.bodyA.categoryBitMask == PhysicsCategory.Fly && contact.bodyB.categoryBitMask == PhysicsCategory.Enemy   {
            //END
            if gameRunning == true{
                    if (UserDefaults.standard.bool(forKey: "sound")) == true{
               flyAlien.run(alienSpeech)
                }
            }
            if life == 1{
                contact.bodyB.node?.removeFromParent()
                life = 0
                life1.removeFromParent()
                gameOver()
            }else if life == 2{
                contact.bodyB.node?.removeFromParent()
                life = 1
                life2.removeFromParent()
            }else if life == 3{
                contact.bodyB.node?.removeFromParent()
                life = 2
                life3.removeFromParent()
            }
        }
        
        
        
        
    
    }
    
    
    func gameOver(){
          helpButton.alpha = 1
         scene?.run(alienSpeech)
         homeButton.alpha = 1.0
        life1.removeFromParent()
           life2.removeFromParent()
           life3.removeFromParent()
        
        
        
        
        if  isTrophy == false {
            restartBt.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.width)!*0.7-(view?.frame.width)!/16)
            if UIDevice.current.userInterfaceIdiom == .phone {
                restartBt.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!*0.9-restartBt.frame.height*0.5)
            }
        }else if isTrophy == true{
            trophy.run(scaleTrophy, completion:
                {
                    self.restartBt.position = CGPoint(x:(self.view?.frame.width)!/2, y: (self.view?.frame.width)!*0.7-(self.view?.frame.width)!/16)
                    if UIDevice.current.userInterfaceIdiom == .phone {
                        self.restartBt.position = CGPoint(x:(self.view?.frame.width)!/2, y: (self.view?.frame.height)!*0.9-self.restartBt.frame.height*0.5)
                    }
            })
        }
     
        
    
okBt.removeAllActions()
        enemy.removeAllActions()
        flyAlien.removeAllActions()
        flyAlien.texture = dead
        flyAlien.physicsBody?.isDynamic = false
        enemy.physicsBody?.isDynamic = false
        gameRunning = false
        if score>best{
            best = score
            if idioma == "portugues"{
                bestLabel.text = "MELHOR: \(best)"
            }else if idioma == "ingles"{
                bestLabel.text = "BEST: \(best)"
            }
          
        }
        UserDefaults.standard.set(best, forKey: "bestscore2")
        UserDefaults.standard.synchronize()
    }
   
    
    func startGame() {
        helpButton.alpha = 0
    isTrophy = false
        
        life = 3
        addChild(life1)
        addChild(life2)
        addChild(life3)
        
        
        life1.run(SKAction.repeatForever(lifeScale))
        life2.run(SKAction.repeatForever(lifeScale))
        life3.run(SKAction.repeatForever(lifeScale))
     
        
        let timerAction = SKAction.wait(forDuration: TimeInterval(time2))
        okBt.run(timerAction, completion:
            {
                self.spawnEnemies()
        })
        
        gameRunning = true
        flyAlien.physicsBody?.isDynamic = true
        enemy.physicsBody?.isDynamic = true
        score = 0
        if idioma == "portugues"{
          scoreLabel.text = "PONTOS: \(score)"
        }else if idioma == "ingles"{
           scoreLabel.text = "SCORE: \(score)"
        }
        
        flyAlien.texture = flyAlienTexture
        let flyAlienTextures = [flyAlienTexture,flyAlienTexture2,flyAlienTexture3,flyAlienTexture2,flyAlienTexture]
        let flyAlienTexturesAnimate = SKAction.repeatForever(SKAction.animate(with: flyAlienTextures, timePerFrame: 0.12))
        let flyAlienRotateAnimate = SKAction.repeatForever(SKAction.sequence([SKAction.rotate(toAngle: .pi/12, duration: 0.5),SKAction.rotate(toAngle: -.pi/12, duration: 0.5) ]))
        flyAlien.run(flyAlienTexturesAnimate)
        flyAlien.run(flyAlienRotateAnimate)
    }
    
    func firstHelp(){
         if (UserDefaults.standard.bool(forKey: "firstHelpAlien")) == false {
        if gameRunning == false && helpNumber != 2 {
            settingsOn = true
            if idioma == "portugues"{
                instructions.texture = helpPt1Texture
            }else if idioma == "ingles" {
                instructions.texture = helpIn1Texture
            }
            okBt.position = CGPoint(x:(view?.frame.width)!*0.63, y: (view?.frame.height)!*0.16)
            instructions.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!/2)
            if UIDevice.current.userInterfaceIdiom == .phone {
                okBt.position = CGPoint(x:(view?.frame.width)!*0.58, y: (view?.frame.height)!*0.14)
                if view?.bounds.width == 812.0{
                    okBt.size = CGSize(width: (view?.frame.width)!*0.16*0.8, height: (view?.frame.height)!*0.07)
                    okBt.xScale = 0.7
                }
            }
        }
        }
    }
    

    
    
    
    override func didMove(to view: SKView) {
        
  
        
        
        trophy.size = CGSize(width: view.frame.width*0.2*1.1, height: view.frame.width*0.24*1.1)
        trophy.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        trophy.zPosition = 120
        trophy.setScale(0)
        addChild(trophy)
        
        
        
          idioma = UserDefaults.standard.string(forKey: "idioma")!
        
     
        startBt.size = CGSize(width: view.frame.width/8, height: view.frame.width/8)
        startBt.position = CGPoint(x:view.frame.width/2, y: view.frame.width*0.7-view.frame.width/16)
        startBt.zPosition = 10
        addChild(startBt)
        
        restartBt.size = CGSize(width: view.frame.width/8, height: view.frame.width/8)
           restartBt.position = CGPoint(x:-view.frame.width/2, y: -view.frame.width*0.7)
        restartBt.zPosition = 10
        addChild(restartBt)
       
        
        
        
        
        
        
        life1.size = CGSize(width: view.frame.width/34, height: view.frame.width/35)
        life1.position = CGPoint(x:view.frame.width/31, y: view.frame.width/31)
        life1.zPosition = 10

        
        
        life2.size = CGSize(width: view.frame.width/34, height: view.frame.width/35)
        life2.position = CGPoint(x:view.frame.width/31+view.frame.width/28, y: view.frame.width/31)
        life2.zPosition = 10

        
        life3.size = CGSize(width: view.frame.width/34, height: view.frame.width/35)
        life3.position = CGPoint(x:view.frame.width/31+(view.frame.width/28*2), y: view.frame.width/31)
        life3.zPosition = 10

   
        
        scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel.fontSize = 20

        scoreLabel.horizontalAlignmentMode = .center
        scoreLabel.position = CGPoint(x: view.frame.width*0.9, y: view.frame.height*0.94)
        scoreLabel.zPosition = 10
        addChild(scoreLabel)
        
        bestLabel = SKLabelNode(fontNamed: "Chalkduster")
       
        bestLabel.fontSize = 20
        bestLabel.horizontalAlignmentMode = .center
        bestLabel.position = CGPoint(x: view.frame.width*0.89, y: view.frame.height*0.89)
        bestLabel.zPosition = 10
        addChild(bestLabel)
        
  
        if idioma == "portugues"{
            scoreLabel.text = "PONTOS: 0"
            bestLabel.text = "MELHOR: 0"
        }else if idioma == "ingles"{
              scoreLabel.text = "SCORE: 0"
             bestLabel.text = "BEST: 0"
        }
        
        
        
        if Int(UserDefaults.standard.integer(forKey: "bestscore2")) > 0 {
            best =  Int(UserDefaults.standard.integer(forKey: "bestscore2"))
            if idioma == "portugues"{
                bestLabel.text = "MELHOR: \(Int(UserDefaults.standard.integer(forKey: "bestscore2")))"
            }else if idioma == "ingles"{
                 bestLabel.text = "BEST: \(Int(UserDefaults.standard.integer(forKey: "bestscore2")))"
            }
          
        }else{
            if idioma == "portugues"{
                 bestLabel.text = "MELHOR: 0"
            }else if idioma == "ingles"{
               bestLabel.text = "BEST: 0"
            }
            
        }
        
         physicsWorld.contactDelegate = self
        time2 = 2
        
   
        
      
        
        let flyAlienTextures = [flyAlienTexture,flyAlienTexture2,flyAlienTexture3,flyAlienTexture2,flyAlienTexture]
        flyAlien.size = CGSize(width: view.frame.width/7.2, height: view.frame.width/8)
        flyAlien.position = CGPoint(x:0+view.frame.width/2, y: view.frame.height/2)
        flyAlien.zPosition = 10
        
        flyAlien.physicsBody = SKPhysicsBody(rectangleOf: flyAlien.frame.size)
        flyAlien.physicsBody?.categoryBitMask = PhysicsCategory.Fly
        flyAlien.physicsBody?.contactTestBitMask = PhysicsCategory.Enemy
        flyAlien.physicsBody?.affectedByGravity = false
        flyAlien.physicsBody?.isDynamic = true
        
        let flyAlienTexturesAnimate = SKAction.repeatForever(SKAction.animate(with: flyAlienTextures, timePerFrame: 0.12))
            let flyAlienRotateAnimate = SKAction.repeatForever(SKAction.sequence([SKAction.rotate(toAngle: .pi/12, duration: 0.5),SKAction.rotate(toAngle: -.pi/12, duration: 0.5) ]))
        self.addChild(flyAlien)
        flyAlien.run(flyAlienTexturesAnimate)
        flyAlien.run(flyAlienRotateAnimate)
       
         helpButton.size = CGSize(width: view.frame.width/25, height: view.frame.width/25)
        helpButton.position = CGPoint(x: view.frame.width-view.frame.width/50, y: view.frame.width/50)
        helpButton.zPosition = 10
        helpButton.alpha = 0.7
        self.addChild(helpButton)
      
   

        
        
        
        

        
     
     

       
        
      
       
        //PARTE COMUM A TODOS AS SCENES:
        
        instructions.size = CGSize(width: view.frame.height*0.8/1.34564, height: view.frame.height*0.8)
        instructions.position = CGPoint(x:-view.frame.width/2, y: -view.frame.height/2)
        instructions.zPosition = 101
       
        
        okBt.size = CGSize(width: view.frame.width*0.16*0.8, height: view.frame.height*0.06*0.8)
        okBt.position = CGPoint(x:-view.frame.width/2, y: -view.frame.height*0.21)
        okBt.zPosition = 102

        
        self.addChild(instructions)
          self.addChild(okBt)
        
        
      
            if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
            instructions.texture = helpPt1Texture
          }else if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
              instructions.texture = helpIn1Texture
        }
      
        
        homeButton.size = CGSize(width: view.frame.width/7.2, height: view.frame.width/8)
        homeButton.setScale(0.35)
        homeButton.position = CGPoint(x:0+view.frame.width/35, y: view.frame.height-view.frame.width/35)
        homeButton.zPosition = 100
        self.addChild(homeButton)
        
       
 
       
        
        
        
        
        
         if UIDevice.current.userInterfaceIdiom == .phone {
            //aquiphone
            scaleTrophy = SKAction.sequence([SKAction.scale(to: 0.9, duration: 1.1), SKAction.wait(forDuration: 1.5), SKAction.scale(to: 1, duration: 0.4), SKAction.scale(to: 0, duration: 0.3)])
            flyAlien.setScale(0.7)
              bestLabel.fontSize = 15
              scoreLabel.fontSize = 15
            startBt.setScale(0.7)
              restartBt.setScale(0.7)
            startBt.position = CGPoint(x:view.frame.width/2, y: view.frame.height*0.9-startBt.frame.height*0.5)
            
                 scoreLabel.position = CGPoint(x: view.frame.width*0.89, y: view.frame.height*0.92)
              bestLabel.position = CGPoint(x: view.frame.width*0.89, y: view.frame.height*0.88)
            
            life1.setScale(0.9)
            life2.setScale(0.9)
            life3.setScale(0.9)
            instructions.size = CGSize(width: view.frame.height*0.7, height: view.frame.height*0.95)
            okBt.size = CGSize(width: view.frame.width*0.16*0.85, height: view.frame.height*0.07)
            helpButton.size = CGSize(width: view.frame.width/22, height: view.frame.width/22)
            helpButton.position = CGPoint(x: view.frame.width-view.frame.width/44, y: view.frame.width/44)

            
        }
           if view.bounds.width == 812.0{
            helpButton.size = CGSize(width: view.frame.width/25, height: view.frame.width/25)
             okBt.size = CGSize(width: view.frame.width*0.16*0.8, height: view.frame.height*0.07)
            okBt.xScale = 0.7
            helpButton.position = CGPoint(x: view.frame.width-helpButton.frame.width*0.85, y: helpButton.frame.height)
            helpButton.texture = helpX
           homeButton.position = CGPoint(x:0+view.frame.width/25, y: view.frame.height-view.frame.width/28)
        }
        scene?.scaleMode = .resizeFill
       
        if let musicURL = Bundle.main.url(forResource: "alienGameSound", withExtension: "mp3") {
            backgroundMusic = SKAudioNode(url: musicURL)
             if (UserDefaults.standard.bool(forKey: "sound")) == true{
            self.addChild(backgroundMusic)
            }
        }

        
              firstHelp()
        
        
    }
    
    
    
 
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let position = touch.location(in: self)

    
        
        
        
        shoot.name = "shootName"
        if gameRunning == true {
        func shootTo(){
            
            shoot.zPosition = 9
            shoot = SKSpriteNode(imageNamed: "shoot")
            shoot.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!*0.5)
            shoot.alpha = 0
            shoot.size = CGSize(width: (view?.frame.width)!/35, height: (view?.frame.width)!/35)
              if UIDevice.current.userInterfaceIdiom == .phone {
                shoot.setScale(0.89)
            }
     
            let shootMove = SKAction.sequence([SKAction.fadeAlpha(to: 1, duration: 0),SKAction.move(to: position, duration: 0.18)])
            
            shoot.physicsBody = SKPhysicsBody(rectangleOf: shoot.frame.size)
            shoot.physicsBody?.categoryBitMask = PhysicsCategory.Shoot
            shoot.physicsBody?.contactTestBitMask = PhysicsCategory.Enemy
            shoot.physicsBody?.affectedByGravity = false
            shoot.physicsBody?.isDynamic = true
        
          
            
             addChild(self.shoot)
            self.shoot.run(shootMove)
            
             flyAlien.position = CGPoint(x:0+(view?.frame.width)!/2, y: (view?.frame.height)!/2)
            
        }
            if (view?.frame.contains(touch.location(in: self)))!{
                
                shootTo()
                    if (UserDefaults.standard.bool(forKey: "sound")) == true{
            //    flyAlien.run(alienGunSound)
                }
            }
            
            
        }
        
        if okBt.contains(touch.location(in: self)){
            if helpNumber == 1{
                            helpNumber = 2
                if idioma == "portugues"{
                    instructions.texture = helpPt2Texture
                }else if idioma == "ingles" {
                instructions.texture = helpIn2Texture
                }
            }else if helpNumber == 2 {
                         UserDefaults.standard.set(true, forKey: "firstHelpAlien")
                 UserDefaults.standard.synchronize()
            helpNumber = 1
                settingsOn = false
            okBt.position = CGPoint(x:-(view?.frame.width)!/2, y: -(view?.frame.height)!*0.21)
            instructions.position = CGPoint(x:-(view?.frame.width)!/2, y: -(view?.frame.height)!/2)
            }
        }
        
        if helpButton.contains(touch.location(in: self)){
            if gameRunning == false && helpNumber != 2 {
                settingsOn = true
                if UserDefaults.standard.string(forKey: "idioma") == "portugues"{

                    instructions.texture = helpPt1Texture
                }else if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                       instructions.texture = helpIn1Texture
                }
            okBt.position = CGPoint(x:(view?.frame.width)!*0.63, y: (view?.frame.height)!*0.16)
            instructions.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!/2)

                if UIDevice.current.userInterfaceIdiom == .phone {
                    okBt.position = CGPoint(x:(view?.frame.width)!*0.58, y: (view?.frame.height)!*0.14)
                    if view?.bounds.width == 812.0{
                        okBt.size = CGSize(width: (view?.frame.width)!*0.16*0.8, height: (view?.frame.height)!*0.07)
                        okBt.xScale = 0.7
                    }
                }
            }
        }
        
        
        
        
        
        
        //Voltar à Home
        if homeButton.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "marsScene")!
            scene.scaleMode = .resizeFill
          let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
          if startBt.contains(touch.location(in: self)){
            if  settingsOn == false{
          startGame()
         homeButton.alpha = 0.6
          startBt.position = CGPoint(x:-(view?.frame.width)!/2, y: -(view?.frame.width)!)
           startBt.removeFromParent()
            }
        }
        
        if restartBt.contains(touch.location(in: self)){
              if  settingsOn == false{
            restartBt.position = CGPoint(x:-(view?.frame.width)!/2, y: -(view?.frame.width)!)
      scene?.removeAllChildren()
            
     homeButton.alpha = 0.6
          
            
             self.addChild(okBt)
              self.addChild(helpButton)
              self.addChild(instructions)
             self.addChild(homeButton)
            self.addChild(flyAlien)
            self.addChild(scoreLabel)
             self.addChild(bestLabel)
            self.addChild(restartBt)
             self.addChild(trophy)
                  self.addChild(backgroundMusic)
            
               startGame()
            }
        }
        
        
        
        
        
        
     
        
    }
    
    
    
    

    
    
    

    
    
    
    
    override func update(_ currentTime: TimeInterval) {
    
  
        
       if gameRunning == true {
        if let child = self.childNode(withName: "shootName") as? SKSpriteNode {
            if child.hasActions() == false{
                  child.removeFromParent()

            }
          
        }
        }
        
        
        
    
}


}
