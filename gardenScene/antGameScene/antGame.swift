//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit
var antSelector = Int(arc4random_uniform(3))
class antGame: SKScene {
    
    
    
    
    var instructions = SKSpriteNode(imageNamed: "antHelp1Pt")
    var helpPt1Texture = SKTexture(imageNamed: "antHelp1Pt")
    var helpPt2Texture = SKTexture(imageNamed: "antHelp2Pt")
    var helpIn1Texture = SKTexture(imageNamed: "antHelp1In")
    var helpIn2Texture = SKTexture(imageNamed: "antHelp2In")
    var settingsOn = false
    var okBt = SKSpriteNode(imageNamed: "okAnt")
    var helpNumber = 1
    var helpButton = SKSpriteNode(imageNamed: "helpBt")
    var helpX = SKTexture(imageNamed: "helpX")
    
    
  var background = SKSpriteNode(imageNamed: "antGameBackground")
    var piso1 = SKSpriteNode(imageNamed: "piso")
    var backgroundMusic = SKAudioNode()
    var button1 = SKSpriteNode(imageNamed: "button")
     var piso2 = SKSpriteNode(imageNamed: "piso")
      var button2 = SKSpriteNode(imageNamed: "button")
      var restartBt = SKSpriteNode(imageNamed: "restartAnt")
       var startBt = SKSpriteNode(imageNamed: "startAnt")
    var piso3 = SKSpriteNode(imageNamed: "piso")
    var button3 = SKSpriteNode(imageNamed: "button")
  var ant1 = SKSpriteNode(imageNamed: "antGameTexture")
     var ant2 = SKSpriteNode(imageNamed: "antGameTexture")
     var ant3 = SKSpriteNode(imageNamed: "antGameTexture")
    var pisoFixo1 = SKSpriteNode(imageNamed: "pisoFixo")
     var pisoFixo2 = SKSpriteNode(imageNamed: "pisoFixo")
     var pisoFixo3 = SKSpriteNode(imageNamed: "pisoFixo")
     var pisoFixo4 = SKSpriteNode(imageNamed: "pisoFixo")
     var pisoFixo5 = SKSpriteNode(imageNamed: "pisoFixo")
     var pisoFixo6 = SKSpriteNode(imageNamed: "pisoFixo")
     var homeButton = SKSpriteNode(imageNamed: "dogBall")
    var trophy = SKSpriteNode(imageNamed: "trophie")
    
    var scoreLabel: SKLabelNode!
      var bestLabel: SKLabelNode!
    
  
      var pisoFixoTexture = SKTexture(imageNamed: "pisoFixo")
       var pisoTexture = SKTexture(imageNamed: "piso")
      var antTexture = SKTexture(imageNamed: "antGameTexture")
    var antGameTexture2 = SKTexture(imageNamed: "antGameTexture2")
    var antGameTexture3 = SKTexture(imageNamed: "antGameTexture3")
      var restartTexture = SKTexture(imageNamed: "restartAnt")

  
   
    var timeRandom = 0.0
    var bool1 = false
    var bool2 = false
    var bool3 = false
    var gameRunning = false
    var score = 0
    var lastAnt = 5
    var best = 0
    
    var trophyOn = false
    var isTrophy = false
       var  scaleTrophy = SKAction.sequence([SKAction.scale(to: 1.3, duration: 1.1), SKAction.wait(forDuration: 1.5), SKAction.scale(to: 1.4, duration: 0.4), SKAction.scale(to: 0, duration: 0.3)])

   
    override func didMove(to view: SKView) {
        
        instructions.size = CGSize(width: view.frame.height*0.8/1.34564, height: view.frame.height*0.8)
        instructions.position = CGPoint(x:-view.frame.width/2, y: -view.frame.height/2)
        instructions.zPosition = 101
        
        helpButton.size = CGSize(width: view.frame.width/25, height: view.frame.width/25)
        helpButton.position = CGPoint(x: view.frame.width-view.frame.width/50, y: view.frame.width/50)
        helpButton.zPosition = 10
        helpButton.alpha = 0.7
     addChild(helpButton)
        
        okBt.size = CGSize(width: view.frame.width*0.16*0.8, height: view.frame.height*0.06*0.8)
        okBt.position = CGPoint(x:-view.frame.width/2, y: -view.frame.height*0.21)
        okBt.zPosition = 102

   addChild(instructions)
    addChild(okBt)
        
        
        
          if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
            instructions.texture = helpPt1Texture
        }else if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
            instructions.texture = helpIn1Texture
        }
        
        
       trophy.size = CGSize(width: view.frame.width*0.2*1.1, height: view.frame.width*0.24*1.1)
        trophy.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        trophy.zPosition = 120
        trophy.setScale(0)
        addChild(trophy)
        
        scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel.horizontalAlignmentMode = .center
      
        scoreLabel.zPosition = 10
        addChild(scoreLabel)
        
        bestLabel = SKLabelNode(fontNamed: "Chalkduster")

        bestLabel.horizontalAlignmentMode = .center
        
        if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
            scoreLabel.text = "SCORE: 0"
            bestLabel.text = "BEST: 0"
        }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
            scoreLabel.text = "PONTOS: 0"
            bestLabel.text = "MELHOR: 0"
        }
      
        bestLabel.zPosition = 10
        addChild(bestLabel)
        
        scoreLabel.position = CGPoint(x: view.frame.width*0.09, y: view.frame.height*0.1)
        bestLabel.position = CGPoint(x: view.frame.width*0.09, y: view.frame.height*0.05)
        
scoreLabel.fontSize = 21
   bestLabel.fontSize = 21
       
        if Int(UserDefaults.standard.integer(forKey: "bestscore")) > 0 {
            best =  Int(UserDefaults.standard.integer(forKey: "bestscore"))
        
            if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                 bestLabel.text = "BEST: \(Int(UserDefaults.standard.integer(forKey: "bestscore")))"
            }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                bestLabel.text = "MELHOR: \(Int(UserDefaults.standard.integer(forKey: "bestscore")))"
            }
        }else{
        
            if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                   bestLabel.text = "BEST: 0"
            }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                 bestLabel.text = "MELHOR: 0"
            }
        }
    
        
        
        homeButton.size =  CGSize(width: view.frame.width/12, height: view.frame.width/35)
        homeButton.position = CGPoint(x: view.frame.width/12, y: view.frame.height-view.frame.width/35)
        homeButton.zPosition = 10
        homeButton.alpha = 0.7
        self.addChild(homeButton)
                physicsWorld.gravity = CGVector(dx: -0.5, dy: -100)
        
        
        restartBt.size =  CGSize(width: view.frame.width/7, height: view.frame.width/7)
        restartBt.position = CGPoint(x: -view.frame.width/2, y: -view.frame.height/2)
        restartBt.alpha = 1
        restartBt.zPosition = 90
       addChild(restartBt)

        startBt.size =  CGSize(width: view.frame.width/7, height: view.frame.width/7)
        startBt.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        startBt.alpha = 1
        startBt.zPosition = 90
        addChild(startBt)
       
     
      

    

        
        
        
        pisoFixo1.size = CGSize(width: view.frame.width/2, height: view.frame.height/32.6)
        pisoFixo1.position = CGPoint(x:  view.frame.width*0.124, y: view.frame.height*0.7195)
        pisoFixo1.zPosition = 10
        pisoFixo1.alpha = 0
        addChild(pisoFixo1)
        
        pisoFixo2.size = CGSize(width: view.frame.width*0.5, height: view.frame.height/32.6)
        pisoFixo2.position = CGPoint(x:  view.frame.width*0.82, y: view.frame.height*0.7195)
        pisoFixo2.zPosition = 10
                pisoFixo2.alpha = 0
        addChild(pisoFixo2)
        
        pisoFixo3.size = CGSize(width: view.frame.width/2, height: view.frame.height/32.6)
        pisoFixo3.position = CGPoint(x:  view.frame.width*0.235, y: view.frame.height*0.461)
        pisoFixo3.zPosition = 10
        pisoFixo3.alpha = 0
        addChild(pisoFixo3)
        
        pisoFixo4.size = CGSize(width: view.frame.width*0.5, height: view.frame.height/32.6)
        pisoFixo4.position = CGPoint(x:  view.frame.width*0.946, y: view.frame.height*0.461)
        pisoFixo4.zPosition = 10
        pisoFixo4.alpha = 0
        addChild(pisoFixo4)
        
        pisoFixo5.size = CGSize(width: view.frame.width/2, height: view.frame.height/32.6)
        pisoFixo5.position = CGPoint(x:  view.frame.width*0.086, y: view.frame.height*0.177)
        pisoFixo5.zPosition = 10
        pisoFixo5.alpha = 0
        addChild(pisoFixo5)
        
        pisoFixo6.size = CGSize(width: view.frame.width*0.5, height: view.frame.height/32.6)
        pisoFixo6.position = CGPoint(x:  view.frame.width*0.774, y: view.frame.height*0.177)
        pisoFixo6.zPosition = 10
        pisoFixo6.alpha = 0
        addChild(pisoFixo6)
        
        
        
  
        background.size = CGSize(width: view.frame.width, height: view.frame.height)
        background.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        background.zPosition = 1
        addChild(background)
        
        piso1.size = CGSize(width: view.frame.width/3, height: view.frame.height/32.6)
        piso1.position = CGPoint(x: view.frame.width*0.2, y: view.frame.height*0.7195)
        piso1.zPosition = 3
        addChild(piso1)
        
        piso2.size = CGSize(width: view.frame.width/3, height: view.frame.height/33)
        piso2.position = CGPoint(x: view.frame.width*0.3, y: view.frame.height*0.461)
        piso2.zPosition = 3
        addChild(piso2)
        
        piso3.size = CGSize(width: view.frame.width/3, height: view.frame.height/33)
        piso3.position = CGPoint(x: view.frame.width*0.1, y: view.frame.height*0.177)
        piso3.zPosition = 3
        addChild(piso3)
    
        
        
        button1.size = CGSize(width: view.frame.width/15, height: view.frame.width/15)
        button1.position = CGPoint(x: view.frame.width*0.935, y: view.frame.height*0.721)
        button1.zPosition = 4
        addChild(button1)
        
          button2.size = CGSize(width: view.frame.width/15, height: view.frame.width/15)
       button2.position = CGPoint(x: view.frame.width*0.935, y: view.frame.height*0.461)
        button2.zPosition = 4
        addChild(button2)
        
        button3.size = CGSize(width: view.frame.width/15, height: view.frame.width/15)
        button3.position = CGPoint(x: view.frame.width*0.935, y: view.frame.height*0.18)
        button3.zPosition = 4
        addChild(button3)
        
        
        
        
        ant1.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.06)
        ant1.position = CGPoint(x:view.frame.width*0.05, y: view.frame.height*0.772)
        ant1.zPosition = 3
        addChild(ant1)
        
        ant2.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.06)
        ant2.position = CGPoint(x:view.frame.width*0.05, y: view.frame.height*0.514)
        ant2.zPosition = 3
        addChild(ant2)
        
        ant3.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.06)
        ant3.position = CGPoint(x:view.frame.width*0.05, y: view.frame.height*0.23)
        ant3.zPosition = 3
        addChild(ant3)
        
        


       
        ant1.physicsBody = SKPhysicsBody(texture: antTexture, size: ant1.size)
        ant1.physicsBody?.isDynamic = true
        ant2.physicsBody = SKPhysicsBody(texture: antTexture, size: ant2.size)
        ant2.physicsBody?.isDynamic = true
        ant3.physicsBody = SKPhysicsBody(texture: antTexture, size: ant3.size)
        ant3.physicsBody?.isDynamic = true
        
        pisoFixo1.physicsBody = SKPhysicsBody(texture: pisoFixoTexture, size: pisoFixo1.size)
        pisoFixo1.physicsBody?.isDynamic = false
        pisoFixo2.physicsBody = SKPhysicsBody(texture: pisoFixoTexture, size: pisoFixo2.size)
        pisoFixo2.physicsBody?.isDynamic = false
        pisoFixo3.physicsBody = SKPhysicsBody(texture: pisoFixoTexture, size: pisoFixo3.size)
        pisoFixo3.physicsBody?.isDynamic = false
        pisoFixo4.physicsBody = SKPhysicsBody(texture: pisoFixoTexture, size: pisoFixo4.size)
        pisoFixo4.physicsBody?.isDynamic = false
        pisoFixo5.physicsBody = SKPhysicsBody(texture: pisoFixoTexture, size: pisoFixo5.size)
        pisoFixo5.physicsBody?.isDynamic = false
        pisoFixo6.physicsBody = SKPhysicsBody(texture: pisoFixoTexture, size: pisoFixo6.size)
        pisoFixo6.physicsBody?.isDynamic = false
        piso1.physicsBody = SKPhysicsBody(texture: pisoTexture, size: piso1.size)
        piso1.physicsBody?.isDynamic = false
        piso2.physicsBody = SKPhysicsBody(texture: pisoTexture, size: piso2.size)
        piso2.physicsBody?.isDynamic = false
        piso3.physicsBody = SKPhysicsBody(texture: pisoTexture, size: piso3.size)
        piso3.physicsBody?.isDynamic = false

        
       antGo()
   
        
        if UIDevice.current.userInterfaceIdiom == .phone {
             scaleTrophy = SKAction.sequence([SKAction.scale(to: 0.9, duration: 1.1), SKAction.wait(forDuration: 1.5), SKAction.scale(to: 1, duration: 0.4), SKAction.scale(to: 0, duration: 0.3)])
            //ABAXAQUI
            bestLabel.fontSize = 15
            scoreLabel.fontSize = 15
            scoreLabel.position = CGPoint(x: view.frame.width*0.09, y: view.frame.height*0.1)
            bestLabel.position = CGPoint(x: view.frame.width*0.09, y: view.frame.height*0.05)
          
            
         instructions.size = CGSize(width: view.frame.height*0.7, height: view.frame.height*0.95)
        okBt.size = CGSize(width: view.frame.width*0.16*0.8, height: view.frame.height*0.07)
            helpButton.size = CGSize(width: view.frame.width/22, height: view.frame.width/22)
            helpButton.position = CGPoint(x: view.frame.width-view.frame.width/44, y: view.frame.width/44)
            if view.bounds.width == 812.0{
                //X
                   helpButton.size = CGSize(width: view.frame.width/25, height: view.frame.width/25)
  okBt.size = CGSize(width: view.frame.width*0.16*0.8, height: view.frame.height*0.07)
                helpButton.position = CGPoint(x: view.frame.width-helpButton.frame.width*0.85, y: helpButton.frame.height)
                helpButton.texture = helpX
                  homeButton.position = CGPoint(x: view.frame.width/12, y: view.frame.height*0.985-homeButton.frame.height*0.5)
              
                let moveX = SKAction.moveTo(x: view.frame.width*0.08, duration: 0)
                ant1.run(moveX)
                ant2.run(moveX)
                ant3.run(moveX)
                
                button1.position = CGPoint(x: view.frame.width*0.89, y: view.frame.height*0.721)
                button2.position = CGPoint(x: view.frame.width*0.89, y: view.frame.height*0.461)
                button3.position = CGPoint(x: view.frame.width*0.89, y: view.frame.height*0.18)
                scoreLabel.position = CGPoint(x: view.frame.width*0.09, y: view.frame.height*0.1)
                bestLabel.position = CGPoint(x: view.frame.width*0.09, y: view.frame.height*0.05)
                
                
            }
            
            
            
        }

        
       
        
        
        
        //Adiciona a música inicial de fundo
        
        if let musicURL = Bundle.main.url(forResource: "gardenBackground", withExtension: "mp3") {
            backgroundMusic = SKAudioNode(url: musicURL)
            if (UserDefaults.standard.bool(forKey: "sound")) == true{
                self.addChild(backgroundMusic)
            }
        }

        
        
        
        

        scene?.scaleMode = .resizeFill
firstHelp()
    }
    
    
    
    
    
    func firstHelp(){
        if (UserDefaults.standard.bool(forKey: "firstHelpAnt")) == false {
            if gameRunning == false && helpNumber != 2 {
                settingsOn = true
                if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                    instructions.texture = helpPt1Texture
                }else   if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                    instructions.texture = helpIn1Texture
                }
                okBt.position = CGPoint(x:(view?.frame.width)!*0.63, y: (view?.frame.height)!*0.16)
                instructions.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!/2)
                 if UIDevice.current.userInterfaceIdiom == .phone {
                      okBt.position = CGPoint(x:(view?.frame.width)!*0.58, y: (view?.frame.height)!*0.14)
                }
            }
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        
        if okBt.contains(touch.location(in: self)){
            if helpNumber == 1{
                helpNumber = 2
                 if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                    instructions.texture = helpPt2Texture
                }else   if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                    instructions.texture = helpIn2Texture
                }
            }else if helpNumber == 2 {
                UserDefaults.standard.set(true, forKey: "firstHelpAnt")
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
                }else   if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                    instructions.texture = helpIn1Texture
                }
                okBt.position = CGPoint(x:(view?.frame.width)!*0.63, y: (view?.frame.height)!*0.16)
                instructions.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!/2)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    okBt.position = CGPoint(x:(view?.frame.width)!*0.58, y: (view?.frame.height)!*0.14)
                }
            }
        }
        
        
        if homeButton.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "gardenScene")!
            scene.scaleMode = .resizeFill
          let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
        
           if restartBt.contains(touch.location(in: self)){
            if   settingsOn == false{
             restartBt.position = CGPoint(x: -(view?.frame.width)!/2, y: -(view?.frame.height)!/2)
 restart()
            }
        }
        
        
        if startBt.contains(touch.location(in: self)){
              if   settingsOn == false{
            startBt.position = CGPoint(x: -(view?.frame.width)!/2, y: -(view?.frame.height)!/2)
              gameRunning = true
            restart()
            }
        }
        
        
       if gameRunning == true {
        if button1.contains(touch.location(in:self)){
            if bool1 == false{
                bool1 = true
            let piso1Go = SKAction.moveTo(x: (view?.frame.width)!*0.45, duration: 0.1)
            piso1.run(piso1Go)
        
            }
            
            if bool2 == true {
                bool2 = false
                let piso2Back = SKAction.moveTo(x: (view?.frame.width)!*0.3, duration: 0.1)
                piso2.run(piso2Back)
            }
            
            if bool3 == true {
                bool3 = false
                let piso3Back = SKAction.moveTo(x: (view?.frame.width)!*0.1, duration: 0.1)
                piso3.run(piso3Back)

            }
            
        }

    if button2.contains(touch.location(in:self)){
    if bool2 == false{
    bool2 = true
    let piso2Go = SKAction.moveTo(x: (view?.frame.width)!*0.6, duration: 0.1)
    piso2.run(piso2Go)
    }
    
    if bool1 == true {
    bool1 = false
      let piso1Back = SKAction.moveTo(x: (view?.frame.width)!*0.2, duration: 0.1)
    piso1.run(piso1Back)
    }
        
        if bool3 == true {
            bool3 = false
            let piso3Back = SKAction.moveTo(x: (view?.frame.width)!*0.1, duration: 0.1)
            piso3.run(piso3Back)
        }
        
        }
        
        if button3.contains(touch.location(in:self)){
            if bool3 == false{
                bool3 = true
                let piso3Go = SKAction.moveTo(x: (view?.frame.width)!*0.48, duration: 0.1)
                piso3.run(piso3Go)
            }
            
            if bool1 == true {
                bool1 = false
                let piso1Back = SKAction.moveTo(x: (view?.frame.width)!*0.2, duration: 0.1)
                piso1.run(piso1Back)
            }
         
            if bool2 == true {
                bool2 = false
                let piso2Back = SKAction.moveTo(x: (view?.frame.width)!*0.3, duration: 0.1)
                piso2.run(piso2Back)
            }
        }
        
        
        }
        
        }
        
     
        
    
    
    override func update(_ currentTime: TimeInterval) {
     ant1.zRotation = 0
             ant2.zRotation = 0
             ant3.zRotation = 0
        
        
        if antSelector == 0 {
            if ant1.position.y > (view?.frame.height)!*0.75 {
  
            }else{
                  helpButton.alpha = 1
                if isTrophy == false && trophyOn == false{
                  restartBt.position = CGPoint(x: (view?.frame.width)!/2, y: (view?.frame.height)!/2)
                }
                gameRunning = false
                if isTrophy == true{
                trophyOn = true
                        isTrophy = false
                    trophy.run(scaleTrophy, completion:
                        {
                            self.trophyOn = false
                            self.restartBt.position = CGPoint(x: (self.view?.frame.width)!/2, y: (self.view?.frame.height)!/2)
                    })
                }
                
                ant1.removeAllActions()
                   ant1.physicsBody?.isDynamic = false
            }
        }else if antSelector == 1 {
            if  ant2.position.y  > (view?.frame.height)!*0.48 {
                
            }else{
                  helpButton.alpha = 1
                 if isTrophy == false && trophyOn == false{
                    restartBt.position = CGPoint(x: (view?.frame.width)!/2, y: (view?.frame.height)!/2)
                }
                ant2.removeAllActions()
                   ant2.physicsBody?.isDynamic = false
                gameRunning = false
                if isTrophy == true{
                      trophyOn = true
                        isTrophy = false
                    trophy.run(scaleTrophy, completion:
                        {
                            self.trophyOn = false
                            self.restartBt.position = CGPoint(x: (self.view?.frame.width)!/2, y: (self.view?.frame.height)!/2)
                    })
                }
            }
        }else if antSelector == 2 {
            if ant3.position.y  > (view?.frame.height)!*0.2 {
  
            }else{
                  helpButton.alpha = 1
                  if isTrophy == false && trophyOn == false{
                    restartBt.position = CGPoint(x: (view?.frame.width)!/2, y: (view?.frame.height)!/2)
                }
                ant3.removeAllActions()
                   ant3.physicsBody?.isDynamic = false
                gameRunning = false
                if isTrophy == true{
                    trophyOn = true
                    isTrophy = false
                    trophy.run(scaleTrophy, completion:
                        {
                            self.trophyOn = false
                            self.restartBt.position = CGPoint(x: (self.view?.frame.width)!/2, y: (self.view?.frame.height)!/2)
                    })
                }
            }
            
        }
        
    

}
    
    
    func scoreIt(){
        
        if antSelector == 0 {
            if ant1.position.y > (view?.frame.height)!*0.75 {
                gameRunning = true
                score += 1
            }else{
                gameRunning = false
                if isTrophy == true{
                    trophy.run(scaleTrophy, completion:
                        {
                            self.restartBt.position = CGPoint(x: (self.view?.frame.width)!/2, y: (self.view?.frame.height)!/2)
                    })
                }
                ant1.removeAllActions()
                ant1.physicsBody?.isDynamic = false
         
                
            }
        }else if antSelector == 1 {
            if  ant2.position.y  > (view?.frame.height)!*0.48 {
                gameRunning = true
                score += 1
            }else{
                ant2.removeAllActions()
                ant2.physicsBody?.isDynamic = false
                gameRunning = false
                if isTrophy == true{
                    trophy.run(scaleTrophy, completion:
                        {
                            self.restartBt.position = CGPoint(x: (self.view?.frame.width)!/2, y: (self.view?.frame.height)!/2)
                    })
                }
     
                
            }
        }else if antSelector == 2 {
            if ant3.position.y  > (view?.frame.height)!*0.2 {
                gameRunning = true
                score += 1
            }else{
                
                ant3.removeAllActions()
                ant3.physicsBody?.isDynamic = false
                gameRunning = false
                if isTrophy == true{
                    trophy.run(scaleTrophy, completion:
                        {
                            self.restartBt.position = CGPoint(x: (self.view?.frame.width)!/2, y: (self.view?.frame.height)!/2)
                    })
                }

                
            }
        }

        
        if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
          scoreLabel.text = "SCORE: \(score)"
        }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
          scoreLabel.text = "PONTOS: \(score)"
        }
        if score > best{
         isTrophy = true
                  best = score

            if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
               bestLabel.text = "BEST: \(best)"
            }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
               bestLabel.text = "MELHOR: \(best)"
            }
              UserDefaults.standard.set(best, forKey: "bestscore")
            UserDefaults.standard.synchronize()
        }
    }
    
    
    func antGo(){
        ant1.removeAllActions()
        ant2.removeAllActions()
        ant3.removeAllActions()
        let antGameTextures = [antTexture, antGameTexture2, antGameTexture3]
        let antAnimate = SKAction.repeatForever(SKAction.animate(with: antGameTextures, timePerFrame: 0.1))
     
        if gameRunning == true {
            antSelector = Int(arc4random_uniform(3))
            if lastAnt == antSelector{
                antSelector = Int(arc4random_uniform(3))
                antGo()
            }else{
                lastAnt = antSelector
                
                
                if score <= 5 {
                    timeRandom = Double(arc4random_uniform(2))+2.5
                }else if score > 5 && score <= 10 {
                    timeRandom = Double(arc4random_uniform(2))+2
                }else if score > 10 && score <= 15 {
                    timeRandom = Double(arc4random_uniform(2))+1.5
                }else if score > 15 && score <= 30 {
                    timeRandom = 1.5
                }else if score > 30 {
                    timeRandom = 1
                }
                
                
                let antPath = SKAction.moveTo(x: (view?.frame.width)!-(view?.frame.width)!*0.04, duration: TimeInterval(timeRandom))
                
                if antSelector == 0{
                       ant1.run(antAnimate)
                    ant1.run(antPath,completion:
                        {
                            
                            self.scoreIt()
                            self.ant1.removeFromParent()
                            self.ant1.zRotation=0
                            self.ant1.position = CGPoint(x: (self.view?.frame.width)!*0.05, y: (self.view?.frame.height)!*0.772)
                            if self.view?.bounds.width == 812.0{
                               self.ant1.position = CGPoint(x: (self.view?.frame.width)!*0.08, y: (self.view?.frame.height)!*0.772)
                            }
                            self.addChild(self.ant1)
                            self.antGo()
                    }
                    )
                    
                    
                    
                }else if  antSelector == 1{
                       ant2.run(antAnimate)
                    ant2.run(antPath,completion:
                        {
                            self.scoreIt()
                            self.ant2.removeFromParent()
                            self.ant2.zRotation=0
                            self.ant2.position = CGPoint(x: (self.view?.frame.width)!*0.05, y: (self.view?.frame.height)!*0.514)
                            if self.view?.bounds.width == 812.0{
                                  self.ant2.position = CGPoint(x: (self.view?.frame.width)!*0.08, y: (self.view?.frame.height)!*0.514)
                            }
                            self.antGo()
                            self.addChild(self.ant2)
                            
                    }
                    )
                }else if  antSelector == 2{
                       ant3.run(antAnimate)
                    ant3.run(antPath,completion:
                        {
                            self.scoreIt()
                            self.ant3.removeFromParent()
                            self.ant3.zRotation=0
                            self.ant3.position = CGPoint(x: (self.view?.frame.width)!*0.05, y: (self.view?.frame.height)!*0.23)
                            if self.view?.bounds.width == 812.0{
                                self.ant3.position = CGPoint(x: (self.view?.frame.width)!*0.08, y: (self.view?.frame.height)!*0.23)
                            }
                            self.antGo()
                            self.addChild(self.ant3)
                            
                    }
                    )
                }
                
                
            }}
    }
    
    func restart(){
        
  helpButton.alpha = 0
      
        isTrophy = false
        
           bool1 = false
           bool2 = false
           bool3 = false
        
        piso1.position = CGPoint(x: (view?.frame.width)!*0.2, y: (view?.frame.height)!*0.7195)
        piso2.position = CGPoint(x: (view?.frame.width)!*0.3, y: (view?.frame.height)!*0.461)
        piso3.position = CGPoint(x: (view?.frame.width)!*0.1, y: (view?.frame.height)!*0.177)
        ant1.position = CGPoint(x: (self.view?.frame.width)!*0.05, y: (self.view?.frame.height)!*0.772)
        ant2.position = CGPoint(x: (self.view?.frame.width)!*0.05, y: (self.view?.frame.height)!*0.514)
        ant3.position = CGPoint(x: (self.view?.frame.width)!*0.05, y: (self.view?.frame.height)!*0.23)
        gameRunning = true
        ant1.physicsBody?.isDynamic = true
        ant2.physicsBody?.isDynamic = true
        ant3.physicsBody?.isDynamic = true
        score = 0
        
        if view?.bounds.width == 812.0{
            //X
            
            ant1.position = CGPoint(x: (self.view?.frame.width)!*0.08, y: (self.view?.frame.height)!*0.772)
            ant2.position = CGPoint(x: (self.view?.frame.width)!*0.08, y: (self.view?.frame.height)!*0.514)
            ant3.position = CGPoint(x: (self.view?.frame.width)!*0.08, y: (self.view?.frame.height)!*0.23)
            
        }
        
        if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
            scoreLabel.text = "SCORE: \(score)"
        }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
            scoreLabel.text = "PONTOS: \(score)"
        }
        
        antGo()
    }
    
    
    
      
    

        
      
    
    
    
    
    

}
