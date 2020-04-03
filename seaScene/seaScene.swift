//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit

class seaScene: SKScene {
    
    //TODAS AS CENAS
    var homeButton = SKSpriteNode(imageNamed: "homeBt")
     var settingsButton = SKSpriteNode(imageNamed: "settingsBt")
    //FIM
    
    var scaleNight = [-1.0,1.0]
    var fishScale = [-1.0, 1.0]
     var boatScale = [-1.0,1.0 ]
    var sounds = SKAudioNode()
    let waitWithoutSound = SKAction.wait(forDuration: 0)
    //DECLARAÇÃO DE OBJETOS
    var backgroundMusic: SKAudioNode!
    var sky = SKSpriteNode(imageNamed: "seaSky")
     var boat = SKSpriteNode(imageNamed: "boatg")
     var nightFish = SKSpriteNode(imageNamed: "nightFish1")
     var jellyfish = SKSpriteNode(imageNamed: "jellyfish1")
      var smokeBoat = SKEmitterNode()
      var inkPolvo = (SKEmitterNode(fileNamed: "octopusInkParticle"))!
         var submarineParticle = (SKEmitterNode(fileNamed: "submarineParticles"))!
    var polvo = SKSpriteNode(imageNamed: "polvo1")
     var fish = SKSpriteNode(imageNamed: "fish1")
     var shark = SKSpriteNode(imageNamed: "shark")
      var submarine = SKSpriteNode(imageNamed: "submarine1")
       var helice = SKSpriteNode(imageNamed: "helice")
      var coral = SKSpriteNode(imageNamed: "coral")
     var crab = SKSpriteNode(imageNamed: "crabLeft1")
    var farol = SKSpriteNode(imageNamed: "farol")
     var sun = SKSpriteNode(imageNamed: "sun")
     var colorFish = SKSpriteNode(imageNamed: "colorFish1")
     var baiacu = SKSpriteNode(imageNamed: "baiacuNormal1")
    let farolLight = SKLightNode()
    var boatCaindo = false
    var baiacuInflated = false
    var crabActing = false
    var colorFishGoing = false
    var day = true
     var farolLigado = false
var submarineActing = false
    var polvoIntersected = false
    var sharkActionToDo = Int(arc4random_uniform(3))
     var crabActionToDo = Int(arc4random_uniform(3))
     var fishColorToGo = Int(arc4random_uniform(6))
     var rotateDirectionJelly = Int(arc4random_uniform(2))
    
    var homeX = SKTexture(imageNamed: "homeBtX")

    
    //Ações globais
    let waitToRemoveInk = SKAction.wait(forDuration: 5)
    let releaseInk1 = SKAction.playSoundFileNamed("inkRelease1", waitForCompletion: false)
     let releaseInk2 = SKAction.playSoundFileNamed("inkRelease2", waitForCompletion: false)
     let fishSound11 = SKAction.playSoundFileNamed("fishSound1", waitForCompletion: false)
     let fishSound22 = SKAction.playSoundFileNamed("fishSound2", waitForCompletion: false)
       let inflatingSound = SKAction.playSoundFileNamed("inflatingSound", waitForCompletion: false)
     let crabSound = SKAction.playSoundFileNamed("crabSound", waitForCompletion: false)
    let crabRunning = SKAction.playSoundFileNamed("crabRunning", waitForCompletion: false)
     let transitionSound = SKAction.playSoundFileNamed("transitionSound", waitForCompletion: true)
      let transitionSound2 = SKAction.playSoundFileNamed("transitionSound2", waitForCompletion: false)
          let farolOn = SKAction.playSoundFileNamed("farolOn", waitForCompletion: false)
    
    
    
    
    let polvoTexture1 = SKTexture(imageNamed: "polvo1")
    let polvoTexture2 = SKTexture(imageNamed: "polvo2")
    let polvoTexture3 = SKTexture(imageNamed: "polvo3")
    let polvoTexture4 = SKTexture(imageNamed: "polvo4")
 var  soundInkReleaseRandom = Int(arc4random_uniform(2))
    
    let fishTexture1 = SKTexture(imageNamed: "fish1")
    let fishTexture2 = SKTexture(imageNamed: "fish2")
    let fishTexture3 = SKTexture(imageNamed: "fish3")
    let fishTexture4 = SKTexture(imageNamed: "fish4")
    
    let jellyfishTexture1 = SKTexture(imageNamed: "jellyfish1")
    let jellyfishTexture2 = SKTexture(imageNamed: "jellyfish2")
    let jellyfishTexture3 = SKTexture(imageNamed: "jellyfish3")
    let jellyfishTexture4 = SKTexture(imageNamed: "jellyfish4")
    let jellyfishTexture5 = SKTexture(imageNamed: "jellyfish5")
    
    let nightFishTexture1 = SKTexture(imageNamed: "nightFish1")
    let nightFishTexture2 = SKTexture(imageNamed: "nightFish2")
    let nightFishTexture3 = SKTexture(imageNamed: "nightFish3")
    let nightFishTexture4 = SKTexture(imageNamed: "nightFish4")
    let nightFishTexture5 = SKTexture(imageNamed: "nightFish5")
  
    let baiacu1 = SKTexture(imageNamed: "baiacuNormal1")
    let baiacu2 = SKTexture(imageNamed: "baiacuNormal2")
    let baiacu3 = SKTexture(imageNamed: "baiacuNormal3")
    let baiacu4 = SKTexture(imageNamed: "baiacuNormal4")
    let baiacu5 = SKTexture(imageNamed: "baiacuNormal5")
    let inflating1 = SKTexture(imageNamed: "inflating1")
    let inflating2 = SKTexture(imageNamed: "inflating2")
    let inflating3 = SKTexture(imageNamed: "inflating3")
    
    
    let crab1 = SKTexture(imageNamed: "crabLeft1")
    let crabLeft2 = SKTexture(imageNamed: "crabLeft2")
    let crabLeft3 = SKTexture(imageNamed: "crabLeft3")
    let crab2 = SKTexture(imageNamed: "crab2")
    let crab3 = SKTexture(imageNamed: "crab3")
    let crab4 = SKTexture(imageNamed: "crab4")
    

    
    
    override func didMove(to view: SKView) {
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            fishScale = [-0.8, 0.8]
            scaleNight = [-0.6,0.6]
            boatScale = [-0.8,0.8]
        }
        
        //Adiciona a música inicial de fundo
       
        if let musicURL = Bundle.main.url(forResource: "seaBackgroundSound", withExtension: "mp3") {
           backgroundMusic = SKAudioNode(url: musicURL)
             if (UserDefaults.standard.bool(forKey: "sound")) == true{
            self.addChild(backgroundMusic)
            }
        }
  

        //PARTE COMUM A TODOS AS SCENES:
        
        settingsButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        settingsButton.position = CGPoint(x: view.frame.width-view.frame.width/40, y: view.frame.height-view.frame.width/40)
        settingsButton.zPosition = 10
        settingsButton.alpha = 0.7
        //self.addChild(settingsButton)
        
        homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        homeButton.position = CGPoint(x:0+view.frame.width/40, y: view.frame.height-view.frame.width/40)
        homeButton.zPosition = 10
        homeButton.alpha = 0.7
        self.addChild(homeButton)
        
        //FIM
        
        
        
        sun.size = CGSize(width: view.frame.height/6*0.8, height: view.frame.height/6*0.8)
        sun.position = CGPoint(x:view.frame.width-view.frame.height/6*0.8, y: view.frame.height*0.98-view.frame.height/12*0.8)
        sun.zPosition = 2
        sun.alpha = 0.75
        let sunRotate = SKAction.repeatForever(SKAction.rotate(byAngle: -1, duration: 6))
          addChild(sun)
        sun.run(sunRotate)
        
        
        //Adicionando o céu alaranjado:
        sky.size = CGSize(width: view.frame.width, height: view.frame.height/6)
        sky.zPosition = 1
        sky.position = CGPoint(x: 0+view.frame.width/2, y: view.frame.height-view.frame.height/12)
        self.addChild(sky)
      
        
        
     
        let animateNightFish = SKAction.animate(with: [nightFishTexture1,nightFishTexture2,nightFishTexture3,nightFishTexture4,nightFishTexture5], timePerFrame: 0.05)
         let animateNightFish2 = SKAction.animate(with: [nightFishTexture5,nightFishTexture4,nightFishTexture3,nightFishTexture2,nightFishTexture1], timePerFrame: 0.05)
        let nightFishAnimate = SKAction.repeatForever(SKAction.sequence([animateNightFish,animateNightFish2]))
        
        
        nightFish.size = CGSize(width: view.frame.width/4.56, height: view.frame.width/7.4)
        nightFish.zPosition = 1
        nightFish.position = CGPoint(x:-view.frame.width/4.56 , y: view.frame.height/2-view.frame.width/15.5)
        self.addChild(nightFish)
        nightFish.run(nightFishAnimate)
        
       
 
        //Adicionando o barco
        boat.size = CGSize(width: view.frame.width/11, height: view.frame.width/11)
        boat.zPosition = 3
        boat.position = CGPoint(x: view.frame.width*0.1, y: view.frame.height-view.frame.height/5.7)
        boat.anchorPoint = CGPoint(x:0, y:0)
        self.addChild(boat)
        //Ação para o barco ir e voltar infinitamente
        let boatPath = SKAction.repeatForever(SKAction.sequence([SKAction.wait(forDuration: 0.3),SKAction.moveTo(x:view.frame.width*0.9, duration: 20),(SKAction.scaleX(to: CGFloat(boatScale[0]), duration: 0.4)),SKAction.wait(forDuration: 0.3), SKAction.moveTo(x:view.frame.width*0.1, duration: 20), SKAction.scaleX(to: CGFloat(boatScale[1]), duration: 0.4),SKAction.wait(forDuration: 0.3)]))
        boat.run(boatPath)
        
 
        
        //Emissor de partículas da espuma
        smokeBoat = (SKEmitterNode(fileNamed: "smokeBoatParticle"))!
        smokeBoat.zPosition = 2
        self.addChild(smokeBoat)
        smokeBoat.position = CGPoint(x: view.frame.width*0.1, y: view.frame.height-view.frame.height/6.1)
        smokeBoat.run(boatPath)
        
        
        coral.size = CGSize(width: view.frame.width/5, height: view.frame.width/4.6)
        coral.zPosition = 3
        coral.position = CGPoint(x: view.frame.width/9, y:view.frame.width/10 )
        self.addChild(coral)
        
    
     
        jellyfish.size = CGSize(width: view.frame.width/12, height: view.frame.width/9)
        jellyfish.zPosition = 3
        jellyfish.position = CGPoint(x: view.frame.width/2+view.frame.width/24, y:view.frame.height*0.74-view.frame.width/18 )
        let jellyfishTextures = [jellyfishTexture1,jellyfishTexture2,jellyfishTexture3,jellyfishTexture4,jellyfishTexture5]
        let jellyfishAnimate = SKAction.animate(with: jellyfishTextures, timePerFrame: 0.15)
        self.addChild(jellyfish)
        jellyfish.run(SKAction.repeatForever(jellyfishAnimate))
        
        

        crab.size = CGSize(width: view.frame.width/7, height: view.frame.width/11.5)
        crab.zPosition = 5
        crab.position = CGPoint(x: view.frame.width/2, y:view.frame.width/23 )
        self.addChild(crab)
        let CrabTexturesFix = [crab1,crab2,crab3,crab4]
        let CrabTexturesFixRev = [crab4,crab3,crab2,crab1]
        
        let actionCrab = SKAction.sequence([SKAction.animate(with: CrabTexturesFix, timePerFrame: 0.1),SKAction.animate(with: CrabTexturesFixRev, timePerFrame: 0.1)])
        
        let foreverActionCrab = SKAction.repeatForever(actionCrab)
        crab.run(foreverActionCrab)
       
        
        
        
        
        
        
        
        
        polvo.size = CGSize(width: view.frame.width/4.8, height: view.frame.width/4.8)
        polvo.zPosition = 3
        polvo.position = CGPoint(x: view.frame.width-view.frame.width/7, y: view.frame.width/8.6)
        self.addChild(polvo)
 
        let texturesPolvo = [polvoTexture1,polvoTexture2,polvoTexture3,polvoTexture4]
         let texturesPolvoRev = [polvoTexture4,polvoTexture3,polvoTexture2,polvoTexture1]
        let polvoAnimate = SKAction.sequence([SKAction.animate(with: texturesPolvo, timePerFrame: 0.14),SKAction.animate(with: texturesPolvoRev, timePerFrame: 0.14)])
        let repeatPolvoAnimation = SKAction.repeatForever(polvoAnimate)
        polvo.run(repeatPolvoAnimation)
        
        //Emissor de partículas da tinta do polvo
       
        inkPolvo.zPosition = 4
        inkPolvo.particleSize = polvo.size
        inkPolvo.position = polvo.position
       
      
        
        
        
        
        
         let texturesFish = [fishTexture1,fishTexture2,fishTexture3,fishTexture4]
        let fishAnimate = SKAction.animate(with: texturesFish, timePerFrame: 0.17)
        let repeatFishAnimation = SKAction.repeatForever(fishAnimate)
        fish.xScale = CGFloat(self.fishScale[0])
 
        
        let fishpath = SKAction.repeatForever(SKAction.sequence([SKAction.wait(forDuration: 0.3),SKAction.moveTo(x:view.frame.width*0.9, duration: 10),(SKAction.scaleX(to:   CGFloat(fishScale[1]), duration: 0.4)),SKAction.wait(forDuration: 0.3), SKAction.moveTo(x:view.frame.width*0.1, duration: 10), SKAction.scaleX(to:   CGFloat(fishScale[0]), duration: 0.4),SKAction.wait(forDuration: 0.3)]))
        fish.position = CGPoint(x: view.frame.width*0.1, y: view.frame.height-view.frame.height/2-view.frame.height/12)
      fish.size = CGSize(width: view.frame.width/9.48, height: view.frame.width/11)
        fish.zPosition=10
        addChild(fish)
        fish.run(fishpath)
         fish.run(repeatFishAnimation)
        
        
        
        shark.position = CGPoint(x:0-view.frame.width/2, y: view.frame.height-view.frame.height/2-view.frame.height/20)
        shark.size = CGSize(width: view.frame.width/3, height: view.frame.width/5.96)
       
        
        baiacu.size = CGSize(width: view.frame.width/5.8, height: view.frame.width/8.7)
        baiacu.position = CGPoint(x:view.frame.width*0.95-view.frame.width/10, y: view.frame.height*0.75-view.frame.width/17.4)
        let texturesBaiacu = [baiacu1,baiacu2,baiacu3,baiacu4,baiacu5]
        let baiacuAnimate = SKAction.animate(with: texturesBaiacu, timePerFrame: 0.1)
        let baiacuAnimateScale = SKAction.repeatForever(SKAction.sequence([SKAction.scale(to: 1.1, duration: 1), SKAction.scale(to: 1, duration: 1)]))
        baiacu.zPosition = 10
        let repeatBaiacuAnimation = SKAction.repeatForever(baiacuAnimate)
        addChild(baiacu)
        baiacu.run(repeatBaiacuAnimation)
        baiacu.run(baiacuAnimateScale, withKey: "scaleBaiacuKey")
        
      
        submarine.size = CGSize(width: view.frame.width/4, height: view.frame.width/6)
        submarine.position = CGPoint(x:view.frame.width/5, y: view.frame.height*0.75-view.frame.width/17.4)
        submarine.xScale = -1
        submarine.zPosition = 5
        addChild(submarine)
        
       
        farol.size = CGSize(width: (view.frame.width/4)*0.07, height: (view.frame.width/4)*0.07/0.4)
        farol.position = CGPoint(x:submarine.frame.maxX, y: view.frame.height*0.75-view.frame.width/12)
        farol.zPosition = 4
        addChild(farol)
        
        farolLight.position = CGPoint(x:submarine.frame.maxX/2.1, y: view.frame.height*0.75-view.frame.width/12)
        farolLight.categoryBitMask = 1
        farolLight.falloff = 0.5
        farolLight.zPosition = 3
        farolLight.ambientColor = UIColor.white
        farolLight.lightColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 0.7)
        farolLight.shadowColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 0.18)
       
        
        farol.lightingBitMask = 1
        farol.shadowedBitMask = 1
        farol.shadowCastBitMask = 1
        
      
      
        
       
        
        
        helice.size = CGSize(width: (view.frame.width/4)*0.07, height: view.frame.width/6*0.44)
        helice.position = CGPoint(x:4.4*(view.frame.width/4)*0.07, y: view.frame.height*0.75-view.frame.width/12)
        let rotateHelice = SKAction.repeatForever(SKAction.rotate(byAngle: 25, duration: 1))
        helice.xScale = -1
        helice.zPosition = 4
        addChild(helice)
        helice.run(rotateHelice)
        
        
        submarineParticle.position = helice.position
     
        
  
        
        
        
       
        
          if UIDevice.current.userInterfaceIdiom == .phone {
            //6/6+/7/7+/8/8+
            //abaxaqui
   
                jellyfish.setScale(0.9)
            
                polvo.setScale(0.67)
                baiacu.setScale(0.8)
               
                crab.setScale(0.9)
                coral.setScale(0.63)
                boat.xScale = 0.8
                boat.yScale = 0.8
                smokeBoat.setScale(0.4)
                fish.yScale = 0.8
                fish.xScale = -0.8
                shark.setScale(0.6)
                submarine.xScale = -0.7
                submarine.yScale = 0.7
                inkPolvo.setScale(0.67)
                nightFish.setScale(0.6)
                helice.setScale(0.7)
                farol.setScale(0.7)
                nightFish.position = CGPoint(x:-view.frame.width/4.56 , y: view.frame.height-view.frame.height/2-view.frame.height/12)
              
                farolLight.position =    CGPoint(x:view.frame.width/5, y: submarine.frame.midY)
                        farol.position = CGPoint(x:submarine.frame.maxX, y: submarine.frame.midY)
                submarineParticle.setScale(0.6)
                submarineParticle.position = CGPoint(x:helice.frame.maxX, y: helice.frame.maxY)
                helice.position = CGPoint(x:4.4*(view.frame.width/4)*0.105, y:view.frame.height*0.685-helice.frame.height/2)
                 submarine.position = CGPoint(x:view.frame.width/5, y: view.frame.height*0.67)
                  jellyfish.position = CGPoint(x: view.frame.width/2+view.frame.width/24, y:view.frame.height*0.67 )
                  baiacu.position = CGPoint(x:view.frame.width*0.93-baiacu.frame.width*0.5, y: view.frame.height*0.69)
                  polvo.position = CGPoint(x: view.frame.width-view.frame.width/8, y:polvo.frame.height*0.5)
                  crab.position = CGPoint(x: view.frame.width/2, y: crab.frame.height*0.5 )
                 coral.position = CGPoint(x: view.frame.width/8.3, y:coral.frame.height*0.5 )
                baiacu.removeAction(forKey: "scaleBaiacuKey")
                let baiacuAnimateScaleX = SKAction.repeatForever(SKAction.sequence([SKAction.scale(to: 0.8, duration: 1), SKAction.scale(to: 0.9, duration: 1)]))
                baiacu.run(baiacuAnimateScaleX)
            homeButton.size = CGSize(width: view.frame.width/17, height: view.frame.width/17)
            homeButton.position = CGPoint(x:0+view.frame.width/34, y: view.frame.height-view.frame.width/34)
            
              if view.bounds.width == 812.0{
            homeButton.texture = homeX
            homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
            homeButton.position = CGPoint(x:homeButton.frame.width*0.8, y: view.frame.height-homeButton.frame.height*0.7)
            }
            
        }
        
       
        

        
        scene?.scaleMode = .resizeFill
        
    }
    
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        
        //Voltar à Home
        if homeButton.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "scenesSelector")!
            scene.scaleMode = .resizeFill
           let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
         if sun.contains(touch.location(in: self)){
            if day == true{
                
                //NOITE
                    fish.removeAllActions()
                    let texturesFish = [fishTexture1,fishTexture2,fishTexture3,fishTexture4]
                    let fishAnimate = SKAction.animate(with: texturesFish, timePerFrame: 0.08)
                    let repeatFishAnimation = SKAction.repeatForever(fishAnimate)
                    fish.run(repeatFishAnimation)
                
               
                let fishGoForNight = SKAction.sequence([SKAction.scaleX(to:  CGFloat(fishScale[0]), duration: 0.1),SKAction.moveTo(x:(view?.frame.width)!+((view?.frame.width)!/9.48)*0.6, duration: 0.8),SKAction.moveTo(x:0-((view?.frame.width)!/10)*0.6, duration: 0)])
                    fish.run(fishGoForNight)
                
                
                  let fishPathNightCorrection = SKAction.moveTo(x:  -(view?.frame.width)!/4.56, duration: 0)
                nightFish.removeAllActions()
                let animateNightFish = SKAction.animate(with: [nightFishTexture1,nightFishTexture2,nightFishTexture3,nightFishTexture4,nightFishTexture5], timePerFrame: 0.05)
                let animateNightFish2 = SKAction.animate(with: [nightFishTexture5,nightFishTexture4,nightFishTexture3,nightFishTexture2,nightFishTexture1], timePerFrame: 0.05)
             
               
                
                
                 let fishPathNight = SKAction.repeatForever(SKAction.sequence([SKAction.wait(forDuration: 0.3),SKAction.moveTo(x:(view?.frame.width)!*0.87, duration: 10),(SKAction.scaleX(to:  CGFloat(scaleNight[0]), duration: 0.4)),SKAction.wait(forDuration: 0.3), SKAction.moveTo(x:(view?.frame.width)!*0.17, duration: 10), SKAction.scaleX(to: CGFloat(scaleNight[1]), duration: 0.4),SKAction.wait(forDuration: 0.3)]))
                let nightFishAnimate = SKAction.repeatForever(SKAction.sequence([animateNightFish,animateNightFish2]))
              
                nightFish.run(fishPathNightCorrection, completion:
                    {self.nightFish.run(fishPathNight)
                        self.nightFish.run(nightFishAnimate)
                }
                    
                )
                
              
                
         
                
                day = false
                
                
                
                
                let TransitionDay = SKAction.sequence([SKAction.moveTo(y: (view?.frame.height)!+(view?.frame.height)!/6*0.8, duration: 0.22), SKAction.setTexture(SKTexture(imageNamed: "moon")) ,SKAction.moveTo(y: (view?.frame.height)!*0.98-(view?.frame.height)!/12*0.8, duration: 0.16)])
                
            sun.run(TransitionDay)
                let waitWithoutSound = SKAction.wait(forDuration: 0)
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                sun.run(transitionSound, completion:
                    { self.sun.run(self.transitionSound2)
                        self.sky.texture = SKTexture(imageNamed: "skyNight")
                       
                }
                )
                  }else{
                    sun.run(waitWithoutSound, completion:
                        { self.sun.run(waitWithoutSound)
                            self.sky.texture = SKTexture(imageNamed: "skyNight")
                            
                    }
                    )
                    
                }
            }else if day == false{
                  day = true
                nightFish.removeAllActions()
                
              
                
                    
               
                
                let fishGoForDay = SKAction.sequence([SKAction.scaleX(to: CGFloat(scaleNight[1]), duration: 0.1),SKAction.moveTo(x:(view?.frame.width)!+((view?.frame.width)!/2), duration: 0.8),SKAction.moveTo(x: -(view?.frame.width)!/4.56, duration: 0)])
                nightFish.run(fishGoForDay)
                
                
                
                
                
                
                
                
                
                fish.removeAllActions()
                 let fishGoForNight = SKAction.moveTo(x:0-((view?.frame.width)!/10)*0.6, duration: 0)
               
               
                let texturesFish2 = [fishTexture1,fishTexture2,fishTexture3,fishTexture4]
                let fishAnimate2 = SKAction.animate(with: texturesFish2, timePerFrame: 0.17)
                let repeatFishAnimation2 = SKAction.repeatForever(fishAnimate2)

                
                
                let fishpath2 = SKAction.repeatForever(SKAction.sequence([SKAction.wait(forDuration: 0.3),SKAction.moveTo(x:(view?.frame.width)!*0.9, duration: 10),(SKAction.scaleX(to: CGFloat(fishScale[1]), duration: 0.4)),SKAction.wait(forDuration: 0.3), SKAction.moveTo(x:(view?.frame.width)!*0.1, duration: 10), SKAction.scaleX(to: CGFloat(fishScale[0]), duration: 0.4),SKAction.wait(forDuration: 0.3)]))
               
               fish.run(fishGoForNight)
            fish.run(repeatFishAnimation2)
                fish.run(fishpath2)
                
                
                
                let TransitionNight = SKAction.sequence([SKAction.moveTo(y: (view?.frame.height)!+(view?.frame.height)!/6*0.8, duration: 0.22), SKAction.setTexture(SKTexture(imageNamed: "sun")) ,SKAction.moveTo(y: (view?.frame.height)!*0.98-(view?.frame.height)!/12*0.8, duration: 0.16)])
                 sun.run(TransitionNight)
                
                if (UserDefaults.standard.bool(forKey: "sound")) == true{

                sun.run(transitionSound, completion:
                    { self.sun.run(self.transitionSound2)
                        self.sky.texture = SKTexture(imageNamed: "seaSky")
                       
                }
                )
                }else{
                    sun.run(waitWithoutSound, completion:
                        { self.sun.run(self.waitWithoutSound)
                            self.sky.texture = SKTexture(imageNamed: "seaSky")
                            
                    }
                    )
                }
                
            }
        }
        
      
          if jellyfish.contains(touch.location(in: self)){
            rotateDirectionJelly = Int(arc4random_uniform(3))
            if rotateDirectionJelly == 0 {
            let jellyRotate = SKAction.rotate(byAngle: -.pi*2, duration: 0.35)
            jellyfish.run(jellyRotate)
            }else if rotateDirectionJelly == 1{
                let jellyRotate2 = SKAction.rotate(byAngle: .pi*2, duration: 0.35)
                jellyfish.run(jellyRotate2)
            }else if rotateDirectionJelly == 2{
                let jellyAnimate3 = SKAction.sequence([SKAction.moveTo(x: farol.frame.maxX+(view?.frame.width)!/10, duration: 0.2),SKAction.moveTo(x: baiacu.frame.minX-(view?.frame.width)!/10, duration: 0.4), SKAction.moveTo(x: (view?.frame.width)!/2+(view?.frame.width)!/24, duration: 0.2)])
                jellyfish.run(jellyAnimate3)
            }
        }
        
       
        
         if submarine.contains(touch.location(in: self)){
            if submarineActing == false {
            if day == true{
                farolLight.removeFromParent()
                submarineActing = true
                submarineParticle.resetSimulation()
                addChild(submarineParticle)
             let rotateHeliceFast = SKAction.sequence([SKAction.rotate(byAngle: 50, duration: 3),SKAction.rotate(byAngle: 80, duration: 3)])
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                    sounds = SKAudioNode(fileNamed: "motorSound.mp3")
                    sounds.autoplayLooped = false
                    addChild(sounds)
                    sounds.run(SKAction.play())
                }
                helice.run(rotateHeliceFast, completion:
                    {
                        self.submarineParticle.removeFromParent()
                        self.submarineActing = false
                        self.helice.removeAllActions()
                         let rotateHelice = SKAction.repeatForever(SKAction.rotate(byAngle: 25, duration: 1))
                        self.helice.run(rotateHelice)
                }
                
                
                )
            }else if day == false{
                if farolLigado == false {
                   addChild(farolLight)
                    if (UserDefaults.standard.bool(forKey: "sound")) == true{
                    farol.run(farolOn)
                    }
                    farolLigado = true
                }else if farolLigado == true {
                    farolLight.removeFromParent()
                     if (UserDefaults.standard.bool(forKey: "sound")) == true{
                    farol.run(farolOn)
                    }
                    farolLigado = false
                }
     
                
            }
            
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        if coral.contains(touch.location(in: self)){
               let colorNode = SKSpriteNode()
            
            
            colorNode.position = CGPoint(x: (view?.frame.width)!/9, y: (view?.frame.width)!*0.11 )
            colorNode.size = CGSize(width: ((view?.frame.width)!/9.48)*0.6, height: ((view?.frame.width)!/11)*0.5)
            colorNode.zPosition = 2
    if UIDevice.current.userInterfaceIdiom == .phone {
         colorNode.position = CGPoint(x: (view?.frame.width)!/9, y: (view?.frame.width)!*0.08 )
            }
            if view?.bounds.width == 812.0{
               colorNode.size = CGSize(width: ((view?.frame.width)!/9.48)*0.6, height: ((view?.frame.width)!/11)*0.5)
                colorNode.zPosition = 2
                colorNode.setScale(0.8)
            }

            fishColorToGo = Int(arc4random_uniform(7))
            if fishColorToGo == 0 {
                colorNode.texture = (SKTexture(imageNamed: "colorFish1"))
            }else  if fishColorToGo == 1{
                colorNode.texture = (SKTexture(imageNamed: "colorFish2"))
            }else  if fishColorToGo == 2{
                colorNode.texture = (SKTexture(imageNamed: "colorFish3"))
            }else  if fishColorToGo == 3{
                colorNode.texture = (SKTexture(imageNamed: "colorFish4"))
            }else  if fishColorToGo == 4{
                colorNode.texture = (SKTexture(imageNamed: "colorFish5"))
            }else  if fishColorToGo == 5{
                colorNode.texture = (SKTexture(imageNamed: "colorFish6"))
            }else  if fishColorToGo == 6{
                colorNode.texture = (SKTexture(imageNamed: "colorFish7"))
            }
        

            let colorFishPath = SKAction.sequence([SKAction.moveTo(x: ((view?.frame.width)!+((view?.frame.width)!/9.48)*0.6), duration: 1.9), SKAction.moveTo(x: (view?.frame.width)!/9, duration: 0) ])
            
                addChild(colorNode)
            if (UserDefaults.standard.bool(forKey: "sound")) == true{
            colorNode.run(fishSound22)
            }
            colorNode.run(colorFishPath, completion:
                {
                    colorNode.removeFromParent()}
            )
            
    }
        
        
        
        
        
        
        
        
        
        
        
       
        if crab.contains(touch.location(in: self)){
            
            if crabActing == false {
            crabActionToDo = Int(arc4random_uniform(3))
            if crabActionToDo == 0 {
                //Crab go Left
                crabActing = true
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                 crab.run(crabRunning)
                }
                let texturesCrabLeft = [crab1,crabLeft2,crabLeft3]
                let crabAnimateLeft = SKAction.animate(with: texturesCrabLeft, timePerFrame: 0.08)
                let repeatCrabLeftAnimation = SKAction.repeatForever(crabAnimateLeft)
                crab.run(repeatCrabLeftAnimation, withKey: "CrabLeftKey")
                
                let crabLeftPath = SKAction.sequence([SKAction.moveTo(x:(view?.frame.width)!/9+(view?.frame.width)!/5 , duration: 0.35),SKAction.moveTo(x: (view?.frame.width)!/2, duration: 0.8)])
                crab.run(crabLeftPath, completion:
                    {
                        self.crab.texture = SKTexture(imageNamed: "crabLeft1")
                        self.crab.removeAction(forKey: "CrabLeftKey")
                     self.crabActing = false
                })
            }else if crabActionToDo == 1{
                //Crab go Left
                crabActing = true
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                crab.run(crabRunning)
                }
                let texturesCrabRight = [crabLeft3,crabLeft2,crab1]
                let crabAnimateRight = SKAction.animate(with: texturesCrabRight, timePerFrame: 0.08)
                let repeatCrabRightAnimation = SKAction.repeatForever(crabAnimateRight)
                crab.run(repeatCrabRightAnimation, withKey: "CrabRightKey")
                
                let crabRightPath = SKAction.sequence([SKAction.moveTo(x:(view?.frame.width)!-(view?.frame.width)!/7-(view?.frame.width)!/4.8, duration: 0.35),SKAction.moveTo(x: (view?.frame.width)!/2, duration: 0.8)])
                
                crab.run(crabRightPath, completion:
                    {
                        self.crab.texture = SKTexture(imageNamed: "crabLeft1")
                        self.crab.removeAction(forKey: "CrabRightKey")
                        self.crabActing = false
                })
            }else if crabActionToDo == 2{
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                crab.run(crabSound)
                }
                
                }
            }
            
            
         
            
            
            
            
        }
        
           if nightFish.contains(touch.location(in: self)){
            if (UserDefaults.standard.bool(forKey: "sound")) == true{
                let sounds2  = SKAudioNode(fileNamed: "nightFishSound")
                sounds2.autoplayLooped = false
                addChild(sounds2)
                sounds2.run(SKAction.play())
        
            }
        }
        
        
        
        
        
        //Soltar tinta do polvo quando tocar nele
        if polvo.contains(touch.location(in: self)){
            //Random para decidir o som
            soundInkReleaseRandom = Int(arc4random_uniform(2))
            if soundInkReleaseRandom == 0 {
                if (UserDefaults.standard.bool(forKey: "sound")) == true{
                polvo.run(releaseInk1)
                }
            }else if soundInkReleaseRandom == 1{
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                polvo.run(releaseInk2)
                }
                
            }
            
        //Solta a tinta
            homeButton.removeAllActions()
            inkPolvo.resetSimulation()
            inkPolvo.removeFromParent()
            addChild(inkPolvo)
            
            homeButton.run(SKAction.wait(forDuration: 5),
                          //After action is done, just call the completion-handler.
                completion: {
                    self.inkPolvo.resetSimulation()
                    self.inkPolvo.removeFromParent()
            }
            )
            
        }
    
        
        if boat.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "fishGame")!
            scene.scaleMode = .resizeFill
           let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
        
        
        
        //Animação tubarão come peixe
        if fish.contains(touch.location(in: self)){

            sharkActionToDo = Int(arc4random_uniform(3))
            if sharkActionToDo == 0 {
            shark.removeFromParent()
            shark.removeAllActions()
            shark.texture = SKTexture(imageNamed: "shark")
            shark.position = CGPoint(x:0-(view?.frame.width)!/2, y: (view?.frame.height)!-(view?.frame.height)!/2-(view?.frame.height)!/20)
            let sharkGetFish = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/6, duration: 1.8)
            addChild(shark)
                shark.run(sharkGetFish)
        }else if sharkActionToDo == 1 || sharkActionToDo == 2 {
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                self.run(fishSound11)
                }
            }
            }

        
         if baiacu.contains(touch.location(in: self)){
            
            if baiacuInflated == false{
                baiacuInflated = true
            baiacu.removeAllActions()
            let texturesBaiacuInflating = [baiacu1,inflating1,inflating2,inflating3]
            let baiacuInflatingAnimate = SKAction.animate(with: texturesBaiacuInflating, timePerFrame: 0.3)
            var baiacuInflateScaleAnimation = SKAction.repeatForever(SKAction.sequence([SKAction.scale(to: 1.32, duration: 1.2), SKAction.scale(to: 1.2, duration: 1.2)]))
                
                if self.view?.bounds.width == 812.0{
                   baiacuInflateScaleAnimation = SKAction.repeatForever(SKAction.sequence([SKAction.scale(to: 1, duration: 1.2), SKAction.scale(to: 0.95, duration: 1.2)]))
                }
                
                
            baiacu.run(baiacuInflatingAnimate)
           baiacu.run(baiacuInflateScaleAnimation)
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                baiacu.run(inflatingSound)
                }
            let waitToNormal = SKAction.wait(forDuration: 6)
            
            
            baiacu.run(waitToNormal, completion:
                {
                    self.baiacuInflated = false
                    self.baiacu.removeAllActions()
                    let texturesBaiacu = [self.baiacu1,self.baiacu2,self.baiacu3,self.baiacu4,self.baiacu5]
                    let baiacuAnimate = SKAction.animate(with: texturesBaiacu, timePerFrame: 0.1)
                    let baiacuAnimateScale = SKAction.repeatForever(SKAction.sequence([SKAction.scale(to: 1.1, duration: 1), SKAction.scale(to: 1, duration: 1)]))
                    self.baiacu.zPosition = 10
                    let repeatBaiacuAnimation = SKAction.repeatForever(baiacuAnimate)
                    self.baiacu.run(repeatBaiacuAnimation)
                    self.baiacu.run(baiacuAnimateScale, withKey: "inflateBack")
                    
                    if self.view?.bounds.width == 812.0{
                        self.baiacu.removeAction(forKey: "inflateBack")
                        let baiacuAnimateScaleX = SKAction.repeatForever(SKAction.sequence([SKAction.scale(to: 0.8, duration: 1), SKAction.scale(to: 0.9, duration: 1)]))
                        self.baiacu.run(baiacuAnimateScaleX)
                    }
                    
            }
            
            
            )
            }
        }
        
        
        
        
    }
    
 
    
    
    
    
    
    
    
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        inkPolvo.position = polvo.position
        
        //Polvo solta tinta e faz o barulho caso o barco colida com ele
         //voltaaqui

        if shark.intersects(fish){
            fish.removeAllActions()
           shark.texture = SKTexture(imageNamed: "sharkGotFish")
            fish.alpha = 0
            fish.position = CGPoint(x:-(view?.frame.width)!/9.48, y: (view?.frame.height)!-(view?.frame.height)!/2-(view?.frame.height)!/12)
            polvo.run(SKAction.wait(forDuration: 4.5),
                     
                completion: {
                    
                  
                    self.shark.removeFromParent()
                    let texturesFish = [self.fishTexture1,self.fishTexture2,self.fishTexture3,self.fishTexture4]
                    let fishAnimate = SKAction.animate(with: texturesFish, timePerFrame: 0.17)
                    let repeatFishAnimation = SKAction.repeatForever(fishAnimate)
                    self.fish.xScale = CGFloat(self.fishScale[0])
                    let fishpath = SKAction.repeatForever(SKAction.sequence([SKAction.wait(forDuration: 0.3),SKAction.moveTo(x:(self.view?.frame.width)!*0.9, duration: 10),(SKAction.scaleX(to: CGFloat(self.fishScale[1]), duration: 0.4)),SKAction.wait(forDuration: 0.3), SKAction.moveTo(x:(self.view?.frame.width)!*0.1, duration: 10), SKAction.scaleX(to: CGFloat(self.fishScale[0]), duration: 0.4),SKAction.wait(forDuration: 0.3)]))
         
                    self.fish.alpha = 1
                    self.fish.zPosition=10
                    if self.day == true {
                    self.fish.run(fishpath)
                    self.fish.run(repeatFishAnimation)
                    }
            }
            )
            
            
        }
        
        
        
        
}


}



