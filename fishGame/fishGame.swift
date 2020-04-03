//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit


class fishGame: SKScene {
  
    
    //TODAS AS CENAS
    var startBt = SKSpriteNode(imageNamed: "startFish")
    var restartBt = SKSpriteNode(imageNamed: "restartFish")
var okBt = SKSpriteNode(imageNamed: "okAlien")
    
    var helpButton = SKSpriteNode(imageNamed: "helpBt")
    var helpX = SKTexture(imageNamed: "helpX")
    
    
    var instructions = SKSpriteNode(imageNamed: "fishHelp1Pt")
    var helpPt1Texture = SKTexture(imageNamed: "fishHelp1Pt")
    var helpIn1Texture = SKTexture(imageNamed: "fishHelp1In")
    var help2Texture = SKTexture(imageNamed: "fishHelp2")
    var settingsOn = false
    var helpNumber = 1
    
    
    
    
    
    var homeButton = SKSpriteNode(imageNamed: "colorFish3")
    var background = SKSpriteNode(imageNamed: "fishGameBackground")
      var piso1 = SKSpriteNode(imageNamed: "piso")
      var piso2 = SKSpriteNode(imageNamed: "piso")
    var scoreLabel: SKLabelNode!
    var bestLabel: SKLabelNode!
    var fish = SKSpriteNode(imageNamed: "fish1")
     var shark1 = SKSpriteNode(imageNamed: "shark")
    var shark2 = SKSpriteNode(imageNamed: "shark")
    var shark3 = SKSpriteNode(imageNamed: "shark")
    
      var sharkWon = SKTexture(imageNamed: "sharkGotFish")
     var sharkTexture = SKTexture(imageNamed: "shark")
     var fishTexture = SKTexture(imageNamed: "fish1")
      var pisoTexture = SKTexture(imageNamed: "piso")
    
    let fishTexture1 = SKTexture(imageNamed: "fish1")
    let fishTexture2 = SKTexture(imageNamed: "fish2")
    let fishTexture3 = SKTexture(imageNamed: "fish3")
    let fishTexture4 = SKTexture(imageNamed: "fish4")
    
    var warning1 = SKSpriteNode(imageNamed: "warnImg")
     var warning2 = SKSpriteNode(imageNamed: "warnImg")
     var warning3 = SKSpriteNode(imageNamed: "warnImg")
    
    var backgroundMusic = SKAudioNode()
    
    var moving = false
var gameRunning = false
    
    var shark1Select = Int()
    var shark2Select = Int()
    var shark3Select = Int()
    
     var trophy = SKSpriteNode(imageNamed: "trophie")
   
    
    var duration = 2.0
    var waitTime = 1.0
    
    
    var points = 0
    var best = 0 
    
    let timer = SKAction.wait(forDuration: 1)

    var trophyOn = false
    var isTrophy = false
    var  scaleTrophy = SKAction.sequence([SKAction.scale(to: 1.3, duration: 1.1), SKAction.wait(forDuration: 1.5), SKAction.scale(to: 1.4, duration: 0.4), SKAction.scale(to: 0, duration: 0.3)])
    
    
func pointCalculator(){
        
        if points >= 6 {
            duration = 1.5
            waitTime = 0.8
        }
        if points >= 10  {
            duration = 1
            waitTime = 0.5
        }
        if points >= 16  {
            duration = 0.8
            waitTime = 0.3
        }
        if points >= 26  {
            duration = 0.8
            waitTime = 0.2
        }
        if points >= 44  {
            duration = 0.7
            waitTime = 0.15
        }
        if points >= 70  {
            duration = 0.64
            waitTime = 0.15
        }
        if points >= 100  {
            duration = 0.54
            waitTime = 0.15
        }
        if points >= 150  {
            duration = 0.4
            waitTime = 0.13
        }
        if points >= 200  {
            duration = 0.35
            waitTime = 0.1
        }
        
    
     
     
        if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
           scoreLabel.text = "SCORE: \(points)"
        }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
              scoreLabel.text = "PONTOS: \(points)"
        }
        if points > best{
             isTrophy = true
            best = points
           
            if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
              bestLabel.text = "BEST: \(best)"
            }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                bestLabel.text = "MELHOR: \(best)"
            }
            UserDefaults.standard.set(best, forKey: "bestscore3")
            UserDefaults.standard.synchronize()
        }
        
        
    }
    
    
    
    func gameStart(){
          helpButton.alpha = 0
         isTrophy = false
        homeButton.alpha = 0.4
        let texturesFish = [fishTexture1,fishTexture2,fishTexture3,fishTexture4]
        let fishAnimate = SKAction.repeatForever(SKAction.animate(with: texturesFish, timePerFrame: 0.17))
         duration = 2.0
         waitTime = 1.0
        fish.removeFromParent()
         self.addChild(fish)
  fish.position = CGPoint(x: (view?.frame.width)!/2, y: (view?.frame.height)!/2)
        points = 0
        
        if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
            scoreLabel.text = "SCORE: \(points)"
        }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
            scoreLabel.text = "PONTOS: \(points)"
        }
        
       //aqui
      
        sharkCall()
        gameRunning = true
        shark1.texture = sharkTexture
         shark2.texture = sharkTexture
         shark3.texture = sharkTexture
        fish.run(fishAnimate)
    }
   
    
    func gameOver(){
        
    
          helpButton.alpha = 1
        homeButton.alpha = 1
 
        
 
        if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
            scoreLabel.text = "SCORE: \(points)"
        }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
            scoreLabel.text = "PONTOS: \(points)"
        }
        
        if points > best{
            
            best = points
           
            if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                  bestLabel.text = "BEST: \(best)"
            }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                 bestLabel.text = "MELHOR: \(best)"
            }
            UserDefaults.standard.set(best, forKey: "bestscore3")
            UserDefaults.standard.synchronize()
            
        }
        
        if  isTrophy == false {
            restartBt.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.width)!*0.7-(view?.frame.width)!/16)
            if UIDevice.current.userInterfaceIdiom == .phone {
                restartBt.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!*0.9-restartBt.frame.height*0.5)
            }
        }
        
        
        if isTrophy == true{
            trophyOn = true
            trophy.run(scaleTrophy, completion:
                {
                    self.isTrophy = false
                    self.trophyOn = false
                    self.restartBt.position = CGPoint(x:(self.view?.frame.width)!/2, y: (self.view?.frame.width)!*0.7-(self.view?.frame.width)!/16)
                    if UIDevice.current.userInterfaceIdiom == .phone {
                        self.restartBt.position = CGPoint(x:(self.view?.frame.width)!/2, y: (self.view?.frame.height)!*0.9-self.restartBt.frame.height*0.5)
                    }
            })
        }
        
        
        
        warning1.removeFromParent()
        warning2.removeFromParent()
        warning3.removeFromParent()
        
        shark1.texture = sharkWon
        shark2.texture = sharkWon
        shark3.texture = sharkWon
        
        fish.removeFromParent()
        gameRunning = false

    }
    
    
    
    
    
    
    
    func sharkCall(){
        
     
        
        
          var scale = [1.0,1.0,1.0,-1.0,-1.0,-1.0]
        
        
        
        //Define as ações:
        let sharkPath1 = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/6, duration: TimeInterval(duration))
         let sharkPath2 = SKAction.moveTo(x: 0-(view?.frame.width)!/6, duration: TimeInterval(duration))
        let wait = SKAction.wait(forDuration: TimeInterval(waitTime))
        
        let actions = [sharkPath1,sharkPath1,sharkPath1,sharkPath2,sharkPath2,sharkPath2,wait]
        
        //Remove todos os objetos e ações
        shark1.removeFromParent()
        shark2.removeFromParent()
        shark3.removeFromParent()
        scene?.removeAllActions()
        shark1.removeAllActions()
        shark2.removeAllActions()
        shark3.removeAllActions()
        warning1.removeFromParent()
         warning2.removeFromParent()
         warning3.removeFromParent()
        
        //Define as velocidades e as escalas
        let positions = [CGPoint(x: -(view?.frame.width)!/6, y: (view?.frame.height)!*0.5), CGPoint(x: -(view?.frame.width)!/6, y: (view?.frame.height)!*0.8), CGPoint(x: -(view?.frame.width)!/6, y: (view?.frame.height)!*0.2), CGPoint(x: (view?.frame.width)!+(view?.frame.width)!/6, y: (view?.frame.height)!*0.5),CGPoint(x: (view?.frame.width)!+(view?.frame.width)!/6, y: (view?.frame.height)!*0.8),CGPoint(x: (view?.frame.width)!+(view?.frame.width)!/6, y: (view?.frame.height)!*0.2)]
        var warningPositions = [CGPoint(x: (view?.frame.width)!/17, y: (view?.frame.height)!*0.5),CGPoint(x: (view?.frame.width)!/17, y: (view?.frame.height)!*0.8),CGPoint(x: (view?.frame.width)!/17, y: (view?.frame.height)!*0.2), CGPoint(x: (view?.frame.width)!-(view?.frame.width)!/17, y: (view?.frame.height)!*0.5),CGPoint(x: (view?.frame.width)!-(view?.frame.width)!/17, y: (view?.frame.height)!*0.8),CGPoint(x: (view?.frame.width)!-(view?.frame.width)!/17, y: (view?.frame.height)!*0.2)]
        
        
       
        //IPHONES
        
        
        if UIDevice.current.userInterfaceIdiom == .phone {
           
            
            if view?.bounds.width == 812.0{
              
               
                  warningPositions = [CGPoint(x: (view?.frame.width)!/9, y: (view?.frame.height)!*0.5),CGPoint(x: (view?.frame.width)!/9, y: (view?.frame.height)!*0.8),CGPoint(x: (view?.frame.width)!/9, y: (view?.frame.height)!*0.2), CGPoint(x: (view?.frame.width)!-(view?.frame.width)!/9, y: (view?.frame.height)!*0.5),CGPoint(x: (view?.frame.width)!-(view?.frame.width)!/9, y: (view?.frame.height)!*0.8),CGPoint(x: (view?.frame.width)!-(view?.frame.width)!/9, y: (view?.frame.height)!*0.2)]
                shark1.setScale(0.76)
                shark2.setScale(0.76)
                shark3.setScale(0.76)
            }
            shark1.setScale(0.88)
            shark2.setScale(0.88)
            shark3.setScale(0.88)
            
                scale = [0.76,0.76,0.76,-0.76,-0.76,-0.76]
            }
            
            
          

        
        //Faz o random sem repetição para definir a posição
        shark1Select = Int(arc4random_uniform(6))
        shark2Select = Int(arc4random_uniform(6))
        shark3Select = Int(arc4random_uniform(6))
        while shark2Select == shark1Select || shark3Select == shark2Select || shark3Select == shark1Select {
            shark2Select = Int(arc4random_uniform(6))
            shark3Select = Int(arc4random_uniform(6))
        }
        
       
        //Define as posições e escalas
        shark1.position = positions[shark1Select]
          shark2.position = positions[shark2Select]
          shark3.position = positions[shark3Select]
        shark1.xScale = CGFloat(scale[shark1Select])
        shark2.xScale = CGFloat(scale[shark2Select])
        shark3.xScale = CGFloat(scale[shark3Select])
        
        
        //Coloca os tubarões
        addChild(shark1)
        addChild(shark2)
        addChild(shark3)
        
        
        //Mostra os avisos:
        let waitWarn2 = SKAction.wait(forDuration: TimeInterval(duration))
         let waitWarn3 = SKAction.wait(forDuration: TimeInterval(duration*2+waitTime))
        
        scene?.run(waitWarn2, completion:
            {
                if self.gameRunning == true {
                self.addChild(self.warning2)
                self.warning2.position = warningPositions[self.shark2Select]
                }
    })
        scene?.run(waitWarn3, completion:
            {
                if self.gameRunning == true {
                self.addChild(self.warning3)
                self.warning3.position = warningPositions[self.shark3Select]
                }
        })
        
        self.addChild(self.warning1)
        self.warning1.position = warningPositions[self.shark1Select]
        //Os tubarões fazem as ações
        
        scene?.run(wait, completion:
            {
                self.shark1.run(actions[self.shark1Select], completion:
            {
                if self.gameRunning == true{
                 self.points += 2
           self.pointCalculator()
               
                self.scene?.run(actions[6], completion:
                    {
                        self.shark2.run(actions[self.shark2Select], completion:
                            {
                                if self.gameRunning == true{
                                    self.points += 2
                                      self.pointCalculator()
                                
                                self.scene?.run(actions[6], completion:
                                    {
                                        self.shark3.run(actions[self.shark3Select], completion:
                                            {
                                             
                                                if self.gameRunning == true{
                                                    self.points += 2
                                                         self.pointCalculator()
                                                    self.sharkCall()
                                                }})})}})})}})})
        
        
        
        

        
    }
    
    
    
    func firstHelp(){
        if (UserDefaults.standard.bool(forKey: "firstHelpFish")) == false {
            if gameRunning == false && helpNumber != 2 {
                settingsOn = true
                if (UserDefaults.standard.string(forKey: "idioma"))! == "portugues"{
                    instructions.texture = helpPt1Texture
                }else if (UserDefaults.standard.string(forKey: "idioma"))! == "ingles" {
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
        
        instructions.size = CGSize(width: view.frame.height*0.8/1.34564, height: view.frame.height*0.8)
        instructions.position = CGPoint(x:-view.frame.width/2, y: -view.frame.height/2)
        instructions.zPosition = 101
        
        
        okBt.size = CGSize(width: view.frame.width*0.16*0.8, height: view.frame.height*0.06*0.8)
        okBt.position = CGPoint(x:-view.frame.width/2, y: -view.frame.height*0.21)
        okBt.zPosition = 102
        
        
        self.addChild(instructions)
        self.addChild(okBt)
        
        
        
        trophy.size = CGSize(width: view.frame.width*0.2*1.1, height: view.frame.width*0.24*1.1)
        trophy.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        trophy.zPosition = 120
        trophy.setScale(0)
        addChild(trophy)
        
       helpButton.size = CGSize(width: view.frame.width/25, height: view.frame.width/25)
        helpButton.position = CGPoint(x: view.frame.width-view.frame.width/50, y: view.frame.width/50)
        
        helpButton.zPosition = 10
        helpButton.alpha = 0.7
        self.addChild(helpButton)
        
        
        
        
        startBt.size = CGSize(width: view.frame.width/8, height: view.frame.width/8)
        startBt.position = CGPoint(x:view.frame.width/2, y: view.frame.width*0.7-view.frame.width/16)
        startBt.zPosition = 10
        addChild(startBt)
        
        restartBt.size = CGSize(width: view.frame.width/8, height: view.frame.width/8)
        restartBt.position = CGPoint(x:-view.frame.width/2, y: -view.frame.width*0.7)
        restartBt.zPosition = 10
        addChild(restartBt)
        
        
        
        scoreLabel = SKLabelNode(fontNamed: "Chalkduster")

        scoreLabel.horizontalAlignmentMode = .center
        scoreLabel.position = CGPoint(x: view.frame.width*0.91, y: view.frame.height*0.95)
        scoreLabel.zPosition = 10
        addChild(scoreLabel)
        
        bestLabel = SKLabelNode(fontNamed: "Chalkduster")

        bestLabel.horizontalAlignmentMode = .center
        bestLabel.position = CGPoint(x: view.frame.width*0.91, y: view.frame.height*0.91)
        bestLabel.zPosition = 10
        addChild(bestLabel)
        
        if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
            scoreLabel.text = "SCORE: 0"
        }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
            scoreLabel.text = "PONTOS: 0"
        }
        
        bestLabel.fontSize = 20
        scoreLabel.fontSize = 20
       
        
        
        
        if Int(UserDefaults.standard.integer(forKey: "bestscore3")) > 0 {
            best =  Int(UserDefaults.standard.integer(forKey: "bestscore3"))
            if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
              bestLabel.text = "BEST: \(Int(UserDefaults.standard.integer(forKey: "bestscore3")))"
            }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                 bestLabel.text = "MELHOR: \(Int(UserDefaults.standard.integer(forKey: "bestscore3")))"
            }
        }else{
            if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                bestLabel.text = "BEST: 0"
            }else if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                 bestLabel.text = "MELHOR: 0"
            }
        }
        
        
        
          fish.physicsBody = SKPhysicsBody(texture: fishTexture, size: fish.size)
        scene?.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        fish.physicsBody?.allowsRotation = false
        fish.physicsBody?.isDynamic = true
        
        piso1.size = CGSize(width: view.frame.width, height: view.frame.height*0.15)
        piso1.position =  CGPoint(x: view.frame.width/2, y: view.frame.height*0.01-view.frame.height*0.15)
        piso1.physicsBody = SKPhysicsBody(texture: pisoTexture, size: piso1.size)
        piso1.physicsBody?.isDynamic = false
piso1.alpha = 0
      addChild(piso1)
        
        piso2.size = CGSize(width: view.frame.width, height: view.frame.height*0.15)
        piso2.position =  CGPoint(x: view.frame.width/2, y: view.frame.height+view.frame.height*0.15)
        piso2.physicsBody = SKPhysicsBody(texture: pisoTexture, size: piso2.size)
        piso2.physicsBody?.isDynamic = false
piso2.alpha = 0
        addChild(piso2)
        
        
        warning1.size = CGSize(width: view.frame.width/8.5*0.7, height: view.frame.width/7.5*0.7)
         warning2.size = CGSize(width: view.frame.width/8.5*0.7, height: view.frame.width/7.5*0.7)
         warning3.size = CGSize(width: view.frame.width/8.5*0.7, height: view.frame.width/7.5*0.7)
        warning1.zPosition = 2
          warning2.zPosition = 2
          warning3.zPosition = 2
        
        let fadeIt = SKAction.repeatForever(SKAction.sequence([SKAction.fadeAlpha(to: 0.4, duration: 0.05),SKAction.fadeAlpha(to: 1, duration: 0.05)]))
        warning1.run(fadeIt)
        warning2.run(fadeIt)
        warning3.run(fadeIt)

        
        
     
        shark1.size = CGSize(width: view.frame.width/3, height: view.frame.width/5.96)
        shark2.size = CGSize(width: view.frame.width/3, height: view.frame.width/5.96)
        shark3.size = CGSize(width: view.frame.width/3, height: view.frame.width/5.96)
        shark1.zPosition = 5
        shark2.zPosition = 5
        shark3.zPosition = 5
        fish.size = CGSize(width: view.frame.width*0.12*0.9, height: view.frame.width*0.11*0.9)
        fish.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        fish.zPosition = 4
        self.addChild(fish)
        
        
        
        
        
        

        
        
        
        
        //PARTE COMUM A TODOS AS SCENES:
        
        background.size = CGSize(width: view.frame.width, height: view.frame.width)
        background.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        self.addChild(background)
        
        homeButton.size = CGSize(width: view.frame.width*0.05, height: view.frame.width*0.04)
        homeButton.position = CGPoint(x:0+view.frame.width*0.03, y: view.frame.height-view.frame.width*0.03)
        homeButton.zPosition = 10
        homeButton.alpha = 0.7
        self.addChild(homeButton)
        
        
        
        
        
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            scoreLabel.position = CGPoint(x: view.frame.width*0.89, y: view.frame.height*0.92)
            bestLabel.position = CGPoint(x: view.frame.width*0.89, y: view.frame.height*0.88)
              homeButton.position = CGPoint(x:0+homeButton.frame.width*0.6, y: view.frame.height-homeButton.frame.height*0.6)
             scaleTrophy = SKAction.sequence([SKAction.scale(to: 0.9, duration: 1.1), SKAction.wait(forDuration: 1.5), SKAction.scale(to: 1, duration: 0.4), SKAction.scale(to: 0, duration: 0.3)])
            //6/6+/7/7+/8/8+
            startBt.setScale(0.7)
            restartBt.setScale(0.7)
 startBt.position = CGPoint(x:view.frame.width/2, y: view.frame.height*0.9-startBt.frame.height*0.5)
           //abaxaqui
            piso1.removeFromParent()
            piso2.removeFromParent()
    piso1.position =  CGPoint(x: -view.frame.width/2, y: view.frame.height*2)
             piso2.position =  CGPoint(x: -view.frame.width/2, y: view.frame.height*2)

                bestLabel.fontSize = 15
                scoreLabel.fontSize = 15
                fish.setScale(0.8)
                shark1.setScale(0.76)
                shark2.setScale(0.76)
                shark2.setScale(0.76)
                warning1.setScale(0.8)
                warning2.setScale(0.8)
                warning3.setScale(0.8)
            instructions.size = CGSize(width: view.frame.height*0.7, height: view.frame.height*0.95)
            okBt.size = CGSize(width: view.frame.width*0.16, height: view.frame.height*0.07)
            helpButton.size = CGSize(width: view.frame.width/22, height: view.frame.width/22)
            helpButton.position = CGPoint(x: view.frame.width-view.frame.width/44, y: view.frame.width/44)
            if view.bounds.width == 812.0{
                   helpButton.size = CGSize(width: view.frame.width/25, height: view.frame.width/25)
                 okBt.size = CGSize(width: view.frame.width*0.16*0.8, height: view.frame.height*0.07)
                okBt.xScale = 0.7
                helpButton.position = CGPoint(x: view.frame.width-helpButton.frame.width*0.85, y: helpButton.frame.height)
                helpButton.texture = helpX
                homeButton.position = CGPoint(x:0+view.frame.width/25, y: view.frame.height-view.frame.width/28)
               
            }
            
        }
        
        if let musicURL = Bundle.main.url(forResource: "seaBackgroundSound", withExtension: "mp3") {
            backgroundMusic = SKAudioNode(url: musicURL)
            if (UserDefaults.standard.bool(forKey: "sound")) == true{
                self.addChild(backgroundMusic)
            }
        }
        
        
        scene?.scaleMode = .resizeFill
     firstHelp()
    }
    
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        
        if okBt.contains(touch.location(in: self)){
            if helpNumber == 1{
                helpNumber = 2
                instructions.texture = help2Texture
            }else if helpNumber == 2 {
                UserDefaults.standard.set(true, forKey: "firstHelpFish")
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
                if (UserDefaults.standard.string(forKey: "idioma"))! == "portugues"{
                    instructions.texture = helpPt1Texture
                }else if (UserDefaults.standard.string(forKey: "idioma"))! == "ingles" {
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
        
        if startBt.contains(touch.location(in: self)){
               if  settingsOn == false{
           gameStart()
            homeButton.alpha = 0.6
            startBt.position = CGPoint(x:-(view?.frame.width)!/2, y: -(view?.frame.width)!)
            startBt.removeFromParent()
            }
        }
        
        
        if restartBt.contains(touch.location(in: self)){
              if  settingsOn == false{
            restartBt.position = CGPoint(x:-(view?.frame.width)!/2, y: -(view?.frame.width)!)
            homeButton.alpha = 0.6
          gameStart()
            }
        }
        
        
        
        
        
        
        //Voltar à Home
        if homeButton.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "seaScene")!
            scene.scaleMode = .resizeFill
           let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
         if fish.contains(touch.location(in: self)){
  moving = true
           
        }
        
        
        
        
        
        
    }
    
    
    
    
     override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        moving = false
          fish.setScale(1)
         if UIDevice.current.userInterfaceIdiom == .phone {
             fish.setScale(0.8)
        }
        fish.alpha = 1
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

        let touch = touches.first!
        let position = touch.location(in: self)
        
        if moving == true {
    fish.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                fish.setScale(0.9)
            }
            fish.alpha = 0.9
            fish.position = position
        }
        
    }
    
    

    
    
    override func update(_ currentTime: TimeInterval) {

        
        if shark1.intersects(warning1) {
        warning1.removeFromParent()
    }
        if shark2.intersects(warning2) {
            warning2.removeFromParent()
        }
        if shark3.intersects(warning3) {
            warning3.removeFromParent()
        }
        
        if trophyOn == false {
            if shark1.intersects(fish) && (scene?.frame.contains(shark1.position))! || shark2.intersects(fish) && (scene?.frame.contains(shark2.position))!  || shark3.intersects(fish)  && (scene?.frame.contains(shark3.position))!  {
           gameOver()
        }
        }
        
    }
    
}
