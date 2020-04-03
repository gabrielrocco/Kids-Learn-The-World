//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //TODAS AS CENAS
    
    var homeButton = SKSpriteNode(imageNamed: "homeBt")
     var settingsButton = SKSpriteNode(imageNamed: "settingsBt")
       let waitAdd = SKAction.wait(forDuration: 0.06)
var sounds = SKAudioNode()
    var sky = SKSpriteNode(imageNamed: "sky")
    var sun = SKSpriteNode(imageNamed: "sun")
     var skyBeforeNode = SKSpriteNode(imageNamed: "skyBefore")
    
     var moon = SKSpriteNode(imageNamed: "moon")
   var cloud1 = SKSpriteNode(imageNamed: "cloud")
     var cloud2 = SKSpriteNode(imageNamed: "cloud")
var mars = SKSpriteNode()
     var rainbow = SKSpriteNode(imageNamed: "rainbow")
     var plane = SKSpriteNode(imageNamed: "plane")
     var bird = SKSpriteNode(imageNamed: "bird1")
    var blink = SKSpriteNode()
    var firefly = SKSpriteNode(imageNamed: "firefly1")
       var shootStar = SKSpriteNode(imageNamed: "shootingStar")
     var shootStar2 = SKSpriteNode(imageNamed: "shootingStar")
    var backgroundMusic: SKAudioNode!
     var RainSoundBackground: SKAudioNode!
    var rainParticles =   SKEmitterNode(fileNamed: "rainParticle")
    var rainParticles2 = SKEmitterNode(fileNamed: "rainParticle")
    var rainyCloudTexture = SKTexture(imageNamed: "rainyCloud")
          let lightNode = SKLightNode()
    var x=Int()
        var y=Int()
    var randomRaioTime = Int()
    var chovendo = false
     var noite = false
    var daySoundPlay = SKAction()
     var birdActionOnClick = Int()
    var fireflyActionOnClick = Int()
    
    var homeX = SKTexture(imageNamed: "homeBtX")
    
 
    
    var birdTexture1 = SKTexture(imageNamed: "bird1")
    var birdTexture2 = SKTexture(imageNamed: "bird2")
    var birdTexture3 = SKTexture(imageNamed: "bird3")
    var birdTexture4 = SKTexture(imageNamed: "bird4")
    var birdTexture5 = SKTexture(imageNamed: "bird5")
    
    
    let fireflyTexture1 = SKTexture(imageNamed: "firefly1")
    let fireflyTexture2 = SKTexture(imageNamed: "firefly2")
    let fireflyTexture3 = SKTexture(imageNamed: "firefly3")
    let fireflyTexture4 = SKTexture(imageNamed: "firefly4")
    let fireflyTexture5 = SKTexture(imageNamed: "firefly5")
    
    
    func fireflyMovesOutforDayorRain(){
        firefly.removeAllActions()
        var fireflyMoveOut = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 1.4)
        if firefly.position.x > (view?.frame.width)!*0.9 {
            fireflyMoveOut = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 0.3)
        }
        if firefly.position.x > (view?.frame.width)!*0.9 {
            fireflyMoveOut = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 0.12)
        }
        let fireflyBack = SKAction.moveTo(x: -(view?.frame.width)!/10, duration: 0)
        let nightFirefly = SKAction.sequence([fireflyMoveOut,fireflyBack])
        let texturesFirefly = [fireflyTexture1,fireflyTexture2,fireflyTexture3,fireflyTexture4,fireflyTexture5]
        let fireflyAnimateFly = SKAction.animate(with: texturesFirefly, timePerFrame: 0.05)
        let repeatedAnimateFirefly = SKAction.repeatForever(fireflyAnimateFly)
        firefly.run(nightFirefly)
        firefly.run(repeatedAnimateFirefly)
    }
    
    
    
    func  birdMovesOutforDayorRain(){
        bird.removeAllActions()
        let texturesfly = [birdTexture1,birdTexture2,birdTexture3,birdTexture4,birdTexture5]
        let animateFly = SKAction.animate(with: texturesfly, timePerFrame: 0.05)
        let repeatedAnimateFly = SKAction.repeatForever(animateFly)
        var birdMoveOut = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 1.5)
        if bird.position.x > (view?.frame.width)!*0.9 {
            birdMoveOut = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 0.3)
        }
        if bird.position.x > (view?.frame.width)!*0.95 {
            birdMoveOut = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 0.12)
        }
        let birdBack = SKAction.moveTo(x: -(view?.frame.width)!/10, duration: 0)
        let rainBird = SKAction.sequence([birdMoveOut,birdBack])
        
        
        bird.run(rainBird)
        bird.run(repeatedAnimateFly)
        
    }
    
    
    
    
    func birdPathNormal(){
        bird.removeAllActions()
        
        let texturesflybird = [birdTexture1,birdTexture2,birdTexture3,birdTexture4,birdTexture5]
        let animateFly = SKAction.animate(with: texturesflybird, timePerFrame: 0.1)
        let repeatedAnimateFly = SKAction.repeatForever(animateFly)
        
        let birdMoveRight = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 23)
        let birdBack = SKAction.moveTo(x: -((view?.frame.width)!)/10, duration: 0)
        let nightBird = SKAction.sequence([birdMoveRight,birdBack])
        let birdMoveRightForever = SKAction.repeatForever(nightBird)
        bird.run(birdMoveRightForever)
        bird.run(repeatedAnimateFly)
    }
    

    
    
    
    func fireflyPathNormal(){
        let texturesFirefly = [fireflyTexture1,fireflyTexture2,fireflyTexture3,fireflyTexture4,fireflyTexture5]
        let fireflyAnimateFly = SKAction.animate(with: texturesFirefly, timePerFrame: 0.12)
        let repeatedAnimateFirefly = SKAction.repeatForever(fireflyAnimateFly)

        let fireflyMoveOut = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 23)
        let fireflyBack = SKAction.moveTo(x: -(view?.frame.width)!/10, duration: 0)
        let fireflyAnimationGo = SKAction.sequence([fireflyMoveOut,fireflyBack])
        let fireflyAnimationGoForever = SKAction.repeatForever(fireflyAnimationGo)
        firefly.run(repeatedAnimateFirefly)
        firefly.run(fireflyAnimationGoForever)
    }
    
    
    
    
  
    
    
    
    override func didMove(to view: SKView) {

        
        skyBeforeNode.size = CGSize(width: view.frame.width*1.1, height: view.frame.height*1.1)
        skyBeforeNode.zPosition = 100
        skyBeforeNode.position = CGPoint(x: 0+view.frame.width/2, y: 0+view.frame.height/2)
        let skyGo = SKAction.sequence([SKAction.fadeOut(withDuration: 2)])
  addChild(skyBeforeNode)
        skyBeforeNode.run(skyGo, completion:
            {
                self.skyBeforeNode.removeFromParent()
        }
        
        )
        

        
      
        
        
        
        //Adiciona a música inicial de fundo
        
        if let musicURL = Bundle.main.url(forResource: "skySoundBack", withExtension: "mp3") {
           backgroundMusic = SKAudioNode(url: musicURL)
            if (UserDefaults.standard.bool(forKey: "sound")) == true{
            self.addChild(backgroundMusic)
            }
        }
 

       
        //declaração do som da chuva
        if let rainSoundURL = Bundle.main.url(forResource: "rainSound", withExtension: "mp3") {
            RainSoundBackground = SKAudioNode(url: rainSoundURL)
        }

       
        
      
     
        sky.size = CGSize(width: view.frame.width, height: view.frame.height)
        sky.position = CGPoint(x: 0+view.frame.width/2, y: 0+view.frame.height/2)
        sky.zPosition = 1
        sky.alpha = 0.5
        let opSky = SKAction.fadeAlpha(to: 1.0, duration: 3)
        self.addChild(sky)
        sky.run(opSky)
        
      
        
        rainbow.size = CGSize(width: view.frame.width, height: view.frame.height*0.7)
        rainbow.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        rainbow.zPosition = 2
       rainbow.alpha = 0
       

        
      
        
        homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        homeButton.position = CGPoint(x:0+view.frame.width/40, y: view.frame.height-view.frame.width/40)
        homeButton.zPosition = 10
        homeButton.alpha = 0.7
        self.addChild(homeButton)
        
       
 
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
 
        sun.size = CGSize(width: view.frame.width/3.5, height: view.frame.width/3.5)
        sun.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        let sunUp = SKAction.move(to:  CGPoint(x: view.frame.width/2, y: view.frame.height/1.5), duration: 2.4)
        sun.zPosition = 3
        self.addChild(sun)
        let rotateSun = SKAction.rotate(byAngle: -2, duration: 10)
        let opSun = SKAction.fadeAlpha(to: 0.88, duration: 1.8)
        let opSun2 = SKAction.fadeAlpha(to: 1.0, duration: 1.8)
        sun.alpha = 0.2
        let opacitySunInitial = SKAction.fadeAlpha(to: 0.88, duration: 2.5)
        let opacitySun = SKAction.sequence([opSun, opSun2])
        sun.run(SKAction.repeatForever(rotateSun))
        sun.run(SKAction.repeatForever(opacitySunInitial))
        sun.run(SKAction.repeatForever(opacitySun))
           let waitAdd = SKAction.wait(forDuration: 0.1)
        
         if UIDevice.current.userInterfaceIdiom == .pad {
        sun.run(SKAction.wait(forDuration: 1.5), completion:
            {
                self.sun.run(sunUp, withKey: "sunUpKey")
        }
        
        )
        
        }

        moon.alpha = 1
        moon.position = CGPoint(x: view.frame.width/2, y: view.frame.height/1.5)
        moon.size = sun.size
        moon.zPosition = sun.zPosition
        
       
   
     
        
       
         plane.position = CGPoint(x: view.frame.width*0.15-view.frame.width/16 , y:view.frame.width*0.75-view.frame.width/8)
        plane.size =   CGSize(width: view.frame.width/6, height: view.frame.width/12)
        plane.zPosition = 3
        plane.alpha = 1
        let planeRotate = SKAction.repeatForever(SKAction.sequence([SKAction.rotate(byAngle: CGFloat(.pi/10.0), duration: 1), SKAction.rotate(byAngle: CGFloat(-(.pi/10.0)), duration: 1) ]))
        let planeGo = SKAction.moveTo(x: view.frame.width*0.25, duration: 36)
        self.addChild(plane)
        plane.run(planeRotate)
        plane.run(planeGo, withKey:"planeGoKey")
  
        

        sky.lightingBitMask = 1
        sky.shadowedBitMask = 1
        sky.shadowCastBitMask = 0

     
      
        bird.position = CGPoint(x: -view.frame.width/10 , y:view.frame.width*0.16)
        bird.size =   CGSize(width: view.frame.width/5, height: view.frame.width/9)
       
        bird.zPosition = 3
        self.addChild(bird)
       birdPathNormal()
      
 

  
        
        
        
        
        
        
  
       
        firefly.position = CGPoint(x: -(view.frame.width)/10 , y:view.frame.width*0.16)
        firefly.size = CGSize(width: (view.frame.width/5)*0.9, height: (view.frame.width/9)*0.9)
        firefly.zPosition = 3
        self.addChild(firefly)
       
        
        
        
        
        
        
        
  
        lightNode.position = CGPoint(x: view.frame.width/2, y: view.frame.height/1.5)
        lightNode.categoryBitMask = 1
        lightNode.falloff = 0
        lightNode.zPosition = 3
        lightNode.ambientColor = UIColor.white
        lightNode.lightColor = UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 0.7)
        lightNode.shadowColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.05)
      
      

        
        
        
        

        shootStar.size = CGSize(width: view.frame.width/8, height: view.frame.width/7.5)
        shootStar.zPosition = 2
        
        
     
        shootStar2.size = CGSize(width: view.frame.width/8, height: view.frame.width/7.5)
        shootStar2.position = CGPoint(x: view.frame.width/4, y: view.frame.height/4)
        shootStar2.zPosition = 2
      
        
        
        
        
        
     
       

        cloud1.size = CGSize(width: view.frame.width/4, height: view.frame.width/6.5)
        cloud1.position = CGPoint(x: view.frame.width/2-view.frame.width/8, y: view.frame.height/2)
        cloud1.zPosition = 4
        let cloud1GoAction =  SKAction.moveTo(x: view.frame.width/8, duration: 6)
        let cloud1BackAction = SKAction.moveTo(x:  view.frame.width/2-view.frame.width/8, duration: 6)
        let cloud1Action = SKAction.sequence([cloud1GoAction,cloud1BackAction])
        self.addChild(cloud1)
        cloud1.run(SKAction.repeatForever(cloud1Action))
        
       
        
        

        cloud2.size = CGSize(width: view.frame.width/4, height: view.frame.width/6.5)
        cloud2.position = CGPoint(x: view.frame.width/2+view.frame.width/8, y: view.frame.height/2)
        cloud2.zPosition = 4
        let cloud2GoAction =   SKAction.moveTo(x: view.frame.width-view.frame.width/8, duration: 6)
        let cloud2BackAction =  SKAction.moveTo(x: view.frame.width/2+view.frame.width/8, duration: 6)
        let cloud2Action = SKAction.sequence([cloud2GoAction,cloud2BackAction])
        self.addChild(cloud2)
        cloud2.run(SKAction.repeatForever(cloud2Action))
        
        
        
        self.cloud1.shadowedBitMask = 1
        self.cloud1.shadowCastBitMask = 1
        self.cloud2.shadowedBitMask = 1
        self.cloud2.shadowCastBitMask = 1
 
        


     
        bird.run(waitAdd, completion: {
               self.addChild(self.lightNode)
        })
   
   
 
      
        rainParticles?.zPosition = 3
        rainParticles2?.zPosition = 3
        rainParticles?.position = cloud1.position
        rainParticles2?.position = cloud2.position
      

 
        
        
        
        
        
         if UIDevice.current.userInterfaceIdiom == .phone {
          
            plane.position = CGPoint(x: view.frame.width*0.1 , y:view.frame.height*0.81)
            plane.removeAction(forKey: "planeGoKey")
            
            let planeGoXX =  SKAction.move(to: CGPoint(x: view.frame.width*0.25, y: view.frame.height*0.85), duration: 30)
            plane.run(planeGoXX)

            sun.setScale(0.85)
         
             moon.setScale(0.8)
              let sunUpPhone = SKAction.move(to:  CGPoint(x: view.frame.width/2, y: view.frame.height*0.74), duration: 2.4)
            sun.run(SKAction.wait(forDuration: 1.1), completion:
                {
                    self.sun.run(sunUpPhone)
            }
                
            )
            cloud1.setScale(0.9)
             moon.position = CGPoint(x: view.frame.width/2 , y:view.frame.height*0.74)
            cloud2.setScale(0.9)
            cloud1.position = CGPoint(x: view.frame.width/2-view.frame.width/8, y: view.frame.height*0.56)
            cloud2.position = CGPoint(x: view.frame.width/2+view.frame.width/8, y: view.frame.height*0.56)
             bird.position = CGPoint(x: -view.frame.width/10 , y:view.frame.width*0.14)
             rainParticles?.particlePositionRange = CGVector(dx: cloud1.frame.width*0.93, dy: 5)
            rainParticles2?.particlePositionRange = CGVector(dx: cloud1.frame.width*0.93, dy: 5)
            firefly.position = CGPoint(x: -view.frame.width/10 , y:view.frame.width*0.14)
          
            
            homeButton.size = CGSize(width: view.frame.width/17, height: view.frame.width/17)
            homeButton.position = CGPoint(x:0+view.frame.width/34, y: view.frame.height-view.frame.width/34)
       
            
            
            //iPhone X
            if view.bounds.width == 812.0{
              

                homeButton.texture = homeX
                  homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
                homeButton.position = CGPoint(x:homeButton.frame.width*0.8, y: view.frame.height-homeButton.frame.height*0.7)
                plane.setScale(0.8)
                   plane.position = CGPoint(x: view.frame.width*0.11 , y:view.frame.height*0.79)
                plane.removeAction(forKey: "planeGoKey")
          bird.setScale(0.9)
                  let planeGoX =  SKAction.move(to: CGPoint(x: view.frame.width*0.29, y: view.frame.height*0.85), duration: 30)
                plane.run(planeGoX)
                rainbow.size = CGSize(width: view.frame.width*1.1, height: view.frame.height*0.8)
                rainbow.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
                firefly.setScale(0.9)
                 sun.setScale(0.7)
                 moon.setScale(0.67)
                moon.position = CGPoint(x: view.frame.width/2 , y:view.frame.height*0.74)
                 bird.position = CGPoint(x: -view.frame.width/10 , y:view.frame.width*0.1)
               rainParticles?.particlePositionRange = CGVector(dx: cloud1.frame.width*0.93, dy: 5)
                rainParticles2?.particlePositionRange = CGVector(dx: cloud1.frame.width*0.93, dy: 5)
                firefly.position = CGPoint(x: -view.frame.width/10 , y:view.frame.width*0.1)
                
                
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
        
        
        
        
        
        
        
        
        
        
        
        
        //toque no avião
          if plane.contains(touch.location(in: self)) && noite == false {
            //emite o som do avião
        let planeSoundPlay = SKAction.playSoundFileNamed("planeSound", waitForCompletion: false)
             if UserDefaults.standard.bool(forKey: "sound") == true {
        plane.run(planeSoundPlay)
            }
        }
        
        
        
        
        
        
      
            
        
        
            
    //toque no pássaro
        if bird.contains(touch.location(in: self)){
            //ele terá duas possíveis ações:
              birdActionOnClick = Int(arc4random_uniform(2))
           
               
            
            if birdActionOnClick == 0 {
                //Pode girar 360º e emitir um som
                  bird.run(SKAction.rotate(byAngle: .pi*2, duration: 0.6))
                
            }else{
                //Ou pode apenas emitir o som de pássaro
                
                birdActionOnClick = Int(arc4random_uniform(2))
                  if UserDefaults.standard.bool(forKey: "sound") == true {
                if birdActionOnClick == 0 {
                    
                bird.run(SKAction.playSoundFileNamed("bird1", waitForCompletion: false))
                }else{
                    bird.run(SKAction.playSoundFileNamed("bird2", waitForCompletion: false))
                }
            }
            }
        
        }
        
        
        //toque no firefly
        if firefly.contains(touch.location(in: self)){
            //ele terá duas possíveis ações:
            fireflyActionOnClick = Int(arc4random_uniform(2))
            if fireflyActionOnClick == 0 {
                //Pode girar 360º e emitir um som
                firefly.run(SKAction.rotate(byAngle: .pi*2, duration: 0.6), completion:
                    {self.firefly.zRotation = 0})
            }else{
                //Ou pode apenas emitir o som
                
                fireflyActionOnClick = Int(arc4random_uniform(2))
                if UserDefaults.standard.bool(forKey: "sound") == true {
                if fireflyActionOnClick == 0 {
                    firefly.run(SKAction.playSoundFileNamed("fireflySound1", waitForCompletion: false))
                }else{
                    firefly.run(SKAction.playSoundFileNamed("fireflySound2", waitForCompletion: false))
                }
            }
            }
            
        }
        
      
        
        
        
        
        
        //toque em marte
       
        if mars.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "marsScene")!
          let transition = SKTransition.fade(withDuration: 1)
        self.view?.presentScene(scene, transition: transition)
        }
        
        
        
        if sun.contains(touch.location(in: self)) && cloud1.contains(touch.location(in: self)) || cloud2.contains(touch.location(in: self)) {
            //Não colocar nada aqui para não entender o toque nas nuvens como o toque no sol ou lua!!!
        }else if sun.contains(touch.location(in: self)) || moon.contains(touch.location(in: self)) {
            //se tocar na lua ou no sol:
            if noite == false{
                //AGORA É NOITE!!!
                noite = true
self.addChild(shootStar)
                plane.removeFromParent()
             
                
                
                
                var movePlaneToCorrectAngle = SKAction.rotate(toAngle: 0, duration: 0)
                plane.run(movePlaneToCorrectAngle)
                
                
                
                
                shootStar.alpha = 1
                
         
                
                //Esta função faz com que, de noite, a estrela cadente seja emitida uma após a outra! Partindo de posições random diferentes e chegando a posições random diferentes.
                func shootStarGo(){
                
                 shootStar.removeAllActions()
                    
                let shootPositionRandom = arc4random_uniform(5)
                if shootPositionRandom == 0{
                     shootStar.position = CGPoint(x: 0, y: (view?.frame.height)!+(view?.frame.width)!/7.5)
                }else if shootPositionRandom == 1{
                     shootStar.position = CGPoint(x: (view?.frame.width)!/4, y: (view?.frame.height)!+(view?.frame.width)!/7.5)
                }else if shootPositionRandom == 2{
                shootStar.position = CGPoint(x: (view?.frame.width)!/10, y: (view?.frame.height)!+(view?.frame.width)!/7.5)
                }else if shootPositionRandom == 3{
                    shootStar.position = CGPoint(x: (view?.frame.width)!/8, y: (view?.frame.height)!+(view?.frame.width)!/7.5)
                }else if shootPositionRandom == 4{
                    shootStar.position = CGPoint(x: 0, y: (view?.frame.height)!+(view?.frame.width)!/7.5)
                }
                
               
        
            
                 let shoot1or2 = arc4random_uniform(1)
                
                
                
                
                if shoot1or2 == 0 {
                    if shootPositionRandom == 0{
                        
                        self.shootStar.run(SKAction.move(to: CGPoint(x:(view?.frame.width)!+(view?.frame.width)!/8  , y:0-(view?.frame.width)!/7.5), duration: 4.5),
                                         //After action is done, just call the completion-handler.
                            completion: {
                               shootStarGo()
                        }
                        )
                    
                    }else if shootPositionRandom == 1{
                        
                        self.shootStar.run(SKAction.move(to: CGPoint(x:((view?.frame.width)!*0.88)+(view?.frame.width)!/8  , y:0-(view?.frame.width)!/7.5), duration: 4.5),
                                           //After action is done, just call the completion-handler.
                            completion: {
                                shootStarGo()
                        }
                        )
                        
                    }else if shootPositionRandom == 2{
                        
                        self.shootStar.run(SKAction.move(to: CGPoint(x:((view?.frame.width)!*0.78)+(view?.frame.width)!/8  , y:0-(view?.frame.width)!/7.5), duration: 4.5),
                                           //After action is done, just call the completion-handler.
                            completion: {
                                shootStarGo()
                        }
                        )
                        
                    }else if shootPositionRandom == 3{
                        
                        self.shootStar.run(SKAction.move(to: CGPoint(x:((view?.frame.width)!*0.69)+(view?.frame.width)!/8  , y:0-(view?.frame.width)!/7.5), duration: 4.5),
                                           //After action is done, just call the completion-handler.
                            completion: {
                                shootStarGo()
                        }
                        )
                        
                    }else if shootPositionRandom == 4{
                        
                        self.shootStar.run(SKAction.sequence([SKAction.move(to: CGPoint(x:((view?.frame.width)!*0.6)+(view?.frame.width)!/8  , y:0-(view?.frame.width)!/7.5), duration: 4.5), SKAction.wait(forDuration: 2)]),
                                           //After action is done, just call the completion-handler.
                            completion: {
                                shootStarGo()
                        }
                        )
                        
                    }
                    
                    
    
                    
                }else  if shoot1or2 == 1{
                 
                    
                    }
                    
                
                }
                
                //executa a função loop
                shootStarGo()
                
                
                
        
                
                
                
                
                
                if (scene?.frame.contains(firefly.position))! {
                    firefly.removeAllActions()
                    
                    let texturesflyfire = [fireflyTexture1,fireflyTexture2,fireflyTexture3,fireflyTexture4,fireflyTexture5]
                    let animateFlyfire = SKAction.animate(with: texturesflyfire, timePerFrame: 0.1)
                    let repeatedAnimateFlyfire = SKAction.repeatForever(animateFlyfire)
                    
                    let fireMoveAdjust = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: TimeInterval(y))
                    let fireMoveRight = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 15)
                    let fireBack = SKAction.moveTo(x: -((view?.frame.width)!)/10, duration: 0)
                    let nightfireAdjust = SKAction.sequence([fireMoveAdjust,fireBack])
                    let nightfire = SKAction.sequence([fireMoveRight,fireBack])
                    let fireMoveRightForever = SKAction.repeatForever(nightfire)
                    firefly.run(repeatedAnimateFlyfire)
                    
                    self.firefly.run(nightfireAdjust,
                                     //After action is done, just call the completion-handler.
                        completion: {
                            self.firefly.run(fireMoveRightForever)
                    }
                    )
                }else{
                
               
                fireflyPathNormal()
                
             
                
                
                }
 if chovendo == true {
                    if (scene?.frame.contains(firefly.position))! {
                        fireflyMovesOutforDayorRain()
                    }else{
                        firefly.removeAllActions()
                    }
                }
                

                   
                //Pássaro vai embora
                    birdMovesOutforDayorRain()
                
                


                //Recomeça a animação do avião da posição inicial:
                plane.removeAllActions()
                plane.position = CGPoint(x: (view?.frame.width)!*0.15-(view?.frame.width)!/16 , y:(view?.frame.width)!*0.75-(view?.frame.width)!/8)
                let planeRotate1 = SKAction.rotate(byAngle: CGFloat(.pi/10.0), duration: 1)
                let planeRotate2 = SKAction.rotate(byAngle: CGFloat(-(.pi/10.0)), duration: 1)
                let planeRotation = SKAction.repeatForever(SKAction.sequence([planeRotate1,planeRotate2]))
                let planeGo = SKAction.moveTo(x: (view?.frame.width)!*0.25, duration: 36)
                plane.run(planeRotation)
                plane.run(planeGo)
                
 
                //Arco íris desaparece em 1s quando é noite:
                if (scene?.frame.contains(rainbow.position))! {
                    self.rainbow.removeAllActions()
                    self.rainbow.run(SKAction.fadeAlpha(to: 0, duration: 1),
                                     //After action is done, just call the completion-handler.
                        completion: {
                            self.rainbow.removeFromParent()
                    }
                    )
                }
   
                //Opacidade do céu agora é 1 pois a imagem do céu têm cor mais escura, certa para a noite:
                sky.alpha = 1
                //Muda a textura do céu
                sky.texture = SKTexture(imageNamed: "nightSky")
               
                
                
                
                //Remove as sombras que o sol faria nas nuvens, mas mantém a fonte de luz na lua para dar um efeito bacana:
                cloud1.shadowedBitMask = 0
                cloud1.shadowCastBitMask = 0
                cloud2.shadowedBitMask = 0
                cloud2.shadowCastBitMask = 0
                
                
                
                //Remove o sol e o nome do sol:
                sun.removeFromParent()
                //nomeSol.removeFromParent()
                //Coloca a lua
                self.addChild(moon)
                
                
                
                //Anima a lua variando a opacidade para dar um efeito de brilho:
                moon.run(SKAction.repeatForever(SKAction.sequence([SKAction.fadeAlpha(to: 0.5, duration: 0.8), SKAction.fadeAlpha(to: 1.0, duration: 1.6)])))
                
                
                
                //Adiciona marte e anima com a opacidade também:
                mars = SKSpriteNode(imageNamed: "mars")
                mars.alpha = 0.8
                
                mars.position = CGPoint(x: ((view?.frame.width)!*0.9)-((view?.frame.width)!/14), y: ((view?.frame.height)!*0.88)-((view?.frame.width)!/14))
                
                
                  if UIDevice.current.userInterfaceIdiom == .phone {
                    
                     mars.position = CGPoint(x: (view?.frame.width)!*0.865 , y: (view?.frame.height)!*0.81)
              
                }
                
                
                mars.size = CGSize(width: (view?.frame.width)!/14, height: (view?.frame.width)!/14)
                mars.zPosition = sun.zPosition
                self.addChild(mars)
                let opMars = SKAction.fadeAlpha(to: 0.5, duration: 2)
                let opMars2 = SKAction.fadeAlpha(to: 1.0, duration: 3)
                let opacityMars = SKAction.sequence([opMars, opMars2])
                mars.run(SKAction.repeatForever(opacityMars))
                
                
                
            
                //Troca o som de fundo para o som da noite:
                backgroundMusic.removeFromParent()
                if let musicURL = Bundle.main.url(forResource: "nightSound", withExtension: "mp3") {
                    backgroundMusic = SKAudioNode(url: musicURL)
                    if (UserDefaults.standard.bool(forKey: "sound")) == true{
                         self.addChild(backgroundMusic)
                    }
                }
              
               
  
                
                //Caso for noite, agora vai voltar a ser dia!!!
            }else if noite == true{
                let movePlaneToCorrectAngle = SKAction.rotate(toAngle: 0, duration: 0)
                plane.run(movePlaneToCorrectAngle)
                //VOLTA PARA O DIA
                 noite = false
                
          
                shootStar.removeFromParent()
                self.addChild(plane)
                
                
                if chovendo == false{
                if !firefly.intersects(firefly.parent!) {
                    firefly.removeAllActions()
                }else{
                    
                     fireflyMovesOutforDayorRain()
                }
                
                }
                
                
                
                sky.alpha = 1
                shootStar.alpha = 0
                
                if chovendo == false{
               
                 
                    if (scene?.frame.contains(bird.position))! {
                        
                        bird.removeAllActions()
                        
                        let texturesflybird = [birdTexture1,birdTexture2,birdTexture3,birdTexture4,birdTexture5]
                        let animateFly = SKAction.animate(with: texturesflybird, timePerFrame: 0.1)
                      
                       
                        
                        let nightBirdAdjust = SKAction.sequence([SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: TimeInterval(x)),SKAction.moveTo(x: -((view?.frame.width)!)/10, duration: 0)])
                        
                        let nightBird = SKAction.sequence([SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 15),SKAction.moveTo(x: -((view?.frame.width)!)/10, duration: 0)])
                        
                       
                        bird.run(SKAction.repeatForever(animateFly))
                        
                        self.bird.run(nightBirdAdjust,
                                      //After action is done, just call the completion-handler.
                            completion: {
                                self.bird.run(SKAction.repeatForever(nightBird))
                        }
                        )
                        
                        
                        bird.run(nightBirdAdjust)
                        
                        
                        
                    }else{

                        birdPathNormal()
                        
                    }
                }
                
                
                
                
                //se estiver chovendo o céu fica com opacidade=0 pois a imagem com chuva tem cor diferente:
                  if chovendo == true {
                     sky.alpha = 0
                }
                
                
                
                
               //Remove marte
                mars.removeFromParent()
                mars.position = CGPoint(x: (-((view?.frame.width)!)), y:(view?.frame.height)!)
              
                
                //Adiciona as sombras que o sol faz nas nuvens
                cloud1.shadowedBitMask = 1
                cloud1.shadowCastBitMask = 1
                cloud2.shadowedBitMask = 1
                cloud2.shadowCastBitMask = 1
             
              //Volta para a cor de fundo do dia
                sky.texture = SKTexture(imageNamed: "sky")
                
                
                //Remove a lua
                moon.removeFromParent()
                
                
                
                //Coloca de volta o sol e o nome
                self.addChild(sun)
               // self.addChild(nomeSol)
                
                
                
                //coloca o som do dia
                 backgroundMusic.removeFromParent()
                if let musicURL = Bundle.main.url(forResource: "skySoundBack", withExtension: "mp3") {
                    backgroundMusic = SKAudioNode(url: musicURL)
                }
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                 self.addChild(backgroundMusic)
                }
            }
        }
        
        //Aqui é o toque nas nuvens que têm as ações com/sem chuva
        if cloud1.contains(touch.location(in: self)) || cloud2.contains(touch.location(in: self)) {
           
            if  chovendo == false {
                //começa a chover
                chovendo = true
                
                //Inicia o som da chuva
                if (UserDefaults.standard.bool(forKey: "sound")) == true{
                     self.addChild(RainSoundBackground)
                }
              
                
                func raioW(){

                     if (scene?.frame.contains(blink.position))! {
                     //RAIO:
                        
                    
                    self.randomRaioTime = Int(arc4random_uniform(4)+3)
                      
                     blink.removeFromParent()
                     blink.removeAllActions()
                     if sky.contains(touch.location(in: self)){
                     blink.position = CGPoint(x: ((view?.frame.width)!/2), y: ((view?.frame.height)!/2))
                     blink.size = CGSize(width: (view?.frame.width)!, height: (view?.frame.height)!)
                     blink.zPosition = 10
                     
                     self.addChild(blink)
                     sky.alpha = 1
                     
                         var blinkAction = SKAction.repeatForever(SKAction.sequence([SKAction.wait(forDuration: TimeInterval(randomRaioTime)),SKAction.fadeAlpha(to: 1, duration: 0),SKAction.playSoundFileNamed("thunderSoundBlink1", waitForCompletion: false),SKAction.colorize(with: UIColor.white, colorBlendFactor: 1, duration: 0),SKAction.wait(forDuration: 0.5),SKAction.fadeAlpha(to: 0, duration: 1)]))
                        
                        if (UserDefaults.standard.bool(forKey: "sound")) == false{
                             blinkAction = SKAction.repeatForever(SKAction.sequence([SKAction.wait(forDuration: TimeInterval(randomRaioTime)),SKAction.fadeAlpha(to: 1, duration: 0),SKAction.colorize(with: UIColor.white, colorBlendFactor: 1, duration: 0),SKAction.wait(forDuration: 0.5),SKAction.fadeAlpha(to: 0, duration: 1)]))
                        }
                        
                        
                        
                     blink.run(blinkAction,
                     //After action is done, just call the completion-handler.
                     completion: {
                     self.blink.removeFromParent()
                     self.randomRaioTime = Int(arc4random_uniform(4) + 3)
                       
                       
                     }
                     )
                     }
                     }
 
                }
                
                raioW()
                

                
                if noite == false {
                //Passarinho fica com medo
                    birdMovesOutforDayorRain()
                }
                
                if noite == true {
                    //Vagalume fica com medo
                      fireflyMovesOutforDayorRain()
                }
                
                
                
                //arco íris some
             rainbow.removeFromParent()

                
                //remove as sombras das nuvens
                cloud1.shadowedBitMask = 0
                cloud1.shadowCastBitMask = 0
                cloud2.shadowedBitMask = 0
                cloud2.shadowCastBitMask = 0

                //muda a imagem das nuvens para nuvens escuras:
                cloud1.texture = rainyCloudTexture
                cloud2.texture = rainyCloudTexture
               
                
                
                //Se for noite, a opacidade do céu não muda, pois a noite já é escura
                if noite == false{
                    sky.removeAllActions()
                sky.alpha = 0
                }
               
   
                //Adiciona as partículas de chuva:
             
addChild((rainParticles)!)
addChild((rainParticles2)!)
              
             
                

                //Emite o som do trovão:
                
                let thunderSoundAc = SKAction.playSoundFileNamed("thunderSound", waitForCompletion: true)
                 if UserDefaults.standard.bool(forKey: "sound") == true {
                     sky.run(thunderSoundAc)
                }

 
                
             
                
                
                
                
                //caso estiver chovendo e tocar na nuvem:
            }else if chovendo == true {
                //Para de chover:
             chovendo = false
                
                
                RainSoundBackground.removeFromParent()
                
                //Remove quaisquer resquícios do raio
                blink.removeAllActions()
                blink.removeFromParent()
                blink.alpha = 0
    
                
                
                if noite == true {
                    if (scene?.frame.contains(firefly.position))! {
                        firefly.removeAllActions()
                        
                        let texturesflyfire = [fireflyTexture1,fireflyTexture2,fireflyTexture3,fireflyTexture4,fireflyTexture5]
                        let animateFlyfire = SKAction.animate(with: texturesflyfire, timePerFrame: 0.1)
                        let repeatedAnimateFlyfire = SKAction.repeatForever(animateFlyfire)
                        
                        let fireMoveAdjust = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: TimeInterval(y))
                        let fireMoveRight = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 15)
                        let fireBack = SKAction.moveTo(x: -((view?.frame.width)!)/10, duration: 0)
                        let nightfireAdjust = SKAction.sequence([fireMoveAdjust,fireBack])
                        let nightfire = SKAction.sequence([fireMoveRight,fireBack])
                        let fireMoveRightForever = SKAction.repeatForever(nightfire)
                        firefly.run(repeatedAnimateFlyfire)
                        
                        self.firefly.run(nightfireAdjust,
                                         //After action is done, just call the completion-handler.
                            completion: {
                                self.firefly.run(fireMoveRightForever)
                        }
                        )
                    }else{
                        fireflyPathNormal()
                    }
                }

                
                if noite == false {
                    
                    
                    
                    
                    
                    if (scene?.frame.contains(bird.position))! {
                        
                        bird.removeAllActions()
                        
                        let texturesflybird = [birdTexture1,birdTexture2,birdTexture3,birdTexture4,birdTexture5]
                        let animateFly = SKAction.animate(with: texturesflybird, timePerFrame: 0.1)
                        let repeatedAnimateFly = SKAction.repeatForever(animateFly)
                        
                        let birdMoveAdjust = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: TimeInterval(x))
                        let birdMoveRight = SKAction.moveTo(x: (view?.frame.width)!+(view?.frame.width)!/10, duration: 15)
                        let birdBack = SKAction.moveTo(x: -((view?.frame.width)!)/10, duration: 0)
                        let nightBirdAdjust = SKAction.sequence([birdMoveAdjust,birdBack])
                        let nightBird = SKAction.sequence([birdMoveRight,birdBack])
                        let birdMoveRightForever = SKAction.repeatForever(nightBird)
                        bird.run(repeatedAnimateFly)
                        
                        self.bird.run(nightBirdAdjust,
                                      //After action is done, just call the completion-handler.
                            completion: {
                                self.bird.run(birdMoveRightForever)
                        }
                        )
                        
                        
                        bird.run(nightBirdAdjust)
                        
                        
                        
                    }else{
                        
                        
                        birdPathNormal()
                        
                    }
                    
                }
                    

                //As imagens das nuvens voltam ao normal
                cloud1.texture = SKTexture(imageNamed: "cloud")
                cloud2.texture = SKTexture(imageNamed: "cloud")
                
                
                
                //A opacidade do céu volta ao máximo
                sky.alpha = 1.0
                cloud1.shadowedBitMask = 1
                cloud1.shadowCastBitMask = 1
                cloud2.shadowedBitMask = 1
                cloud2.shadowCastBitMask = 1
              
                    self.rainParticles?.removeFromParent()
                    self.rainParticles2?.removeFromParent()
                
            
                if noite == false{
                
                    //arco iris aparece e some depois da chuva, caso for dia
                     self.addChild(rainbow)
                    rainbow.alpha=0
                      rainbow.removeAllActions()
                    rainbow.run(SKAction.sequence([SKAction.fadeAlpha(to: 1, duration: 3),SKAction.fadeOut(withDuration: 7.5)]),
                        completion: {
                            self.rainbow.removeFromParent()
                    }
                    )
                       
                   
                //toca um som quando para de chover, caso for dia
                    let soundDayPlay = SKAction.playSoundFileNamed("sunSound", waitForCompletion: false)
                     if UserDefaults.standard.bool(forKey: "sound") == true {
                sky.run(soundDayPlay)
                    }
                }
               
                
            }
         
        
        }
    
        
        
    }
    
    
    
   
    
    
    override func update(_ currentTime: TimeInterval) {
        
        
         x =  Int(((view?.frame.width)!/bird.position.x)*1.5)
           y =  Int(((view?.frame.width)!/firefly.position.x)*1.5)
        //Atualiza a cada frame a posição da chuva, quando existir, para ser sincronizadas com a posição das nuvens.
    

        if chovendo == true{
         rainParticles?.position = cloud1.position
          rainParticles2?.position = cloud2.position
        }
 

 
        
        
        
    }
 
    
}


