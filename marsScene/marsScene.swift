//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit

class marsScene: SKScene {
    
     var colorX = UIColor()
   var  marsSky = SKSpriteNode(imageNamed: "marsBackground")
     var homeButton = SKSpriteNode(imageNamed: "homeBt")
     var flyAlien = SKSpriteNode(imageNamed: "flyAlien")
       var moon = SKSpriteNode(imageNamed: "moon")
       var rocket = SKSpriteNode(imageNamed: "rocket")
          var et = SKSpriteNode(imageNamed: "et")
    var raio = SKSpriteNode()
    var backgroundMusic: SKAudioNode!
      var fireEmitter = SKEmitterNode()
    
    
 
    
    
    
   
    
    
    var homeX = SKTexture(imageNamed: "homeBtX")

    
    
    //Textures
     var flyAlienTexture = SKTexture(imageNamed: "flyAlienG")
         var flyAlienTexture2 = SKTexture(imageNamed: "flyAlien2G")
         var flyAlienTexture3 = SKTexture(imageNamed: "flyAlien3G")
    
     var marsBackX = SKTexture(imageNamed: "marsX")
      var marsIphone = SKTexture(imageNamed: "marsiPhone")
    var sounds = SKAudioNode()
    var etTexture1 = SKTexture(imageNamed: "et")
    var etTexture2 = SKTexture(imageNamed: "et2")
    var etTexture3 = SKTexture(imageNamed: "et3")
      var etTexture4 = SKTexture(imageNamed: "et4")
    
   
     let alienGunSound = SKAction.playSoundFileNamed("alienGun", waitForCompletion: false)
      let rocketSound = SKAction.playSoundFileNamed("rocketSound", waitForCompletion: false)
       let alienSpeech = SKAction.playSoundFileNamed("alienSpeech", waitForCompletion: false)
    
    
    //Booleans
    var  rocketActing = false
    
    var alienToDo = Int(arc4random_uniform(2))
    
    
    
    
    
    

    
    override func didMove(to view: SKView) {
        
     
      
        
        raio.size = CGSize(width: view.frame.width, height: view.frame.width)
        raio.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
         self.addChild(raio)
        raio.alpha = 0
        
        rocket.position = CGPoint(x: view.frame.width*0.95-view.frame.width/18, y: view.frame.height*0.13+view.frame.width/6)
        rocket.zRotation = -.pi/16
        rocket.size = CGSize(width: view.frame.width/9, height: view.frame.width/4)
        rocket.zPosition = 4
        self.addChild(rocket)
        fireEmitter = (SKEmitterNode(fileNamed: "fireRocket"))!
        fireEmitter.zPosition = 3
          fireEmitter.zRotation = -.pi/16
   
       
        
        
        
        
        let flyAlienTextures = [flyAlienTexture,flyAlienTexture2,flyAlienTexture3,flyAlienTexture2,flyAlienTexture]
        flyAlien.size = CGSize(width: view.frame.width/7.2, height: view.frame.width/8)
        flyAlien.position = CGPoint(x:0+view.frame.width/8, y: view.frame.height*0.46+view.frame.width/16)
        flyAlien.zPosition = 3
        let flyAlienTexturesAnimate = SKAction.repeatForever(SKAction.animate(with: flyAlienTextures, timePerFrame: 0.12))
        let flyAlienPathAnimate = SKAction.repeatForever(SKAction.sequence([SKAction.moveTo(x: view.frame.width-view.frame.width/14, duration: 60),SKAction.moveTo(x: view.frame.width/7.2, duration: 30) ]))
              let flyAlienRotateAnimate = SKAction.repeatForever(SKAction.sequence([SKAction.rotate(toAngle: .pi/12, duration: 0.5),SKAction.rotate(toAngle: -.pi/12, duration: 0.5) ]))
        self.addChild(flyAlien)
        flyAlien.run(flyAlienPathAnimate)
        flyAlien.run(flyAlienRotateAnimate)
         flyAlien.run(flyAlienTexturesAnimate)
    
        
     

        moon.position = CGPoint(x: view.frame.width*0.5, y: view.frame.height*0.76)
        moon.size = CGSize(width: view.frame.width/7.5, height: view.frame.width/7.5)
        let moonOpacity = SKAction.repeatForever(SKAction.sequence([SKAction.fadeAlpha(to: 0.55, duration: 2),SKAction.fadeAlpha(to: 1, duration: 1.3)]))
        moon.run(moonOpacity)
        moon.zPosition = 2
        self.addChild(moon)
        
        
        let etTextures = [etTexture1,etTexture2,etTexture3,etTexture4,etTexture3,etTexture2]
        let etAnimation = SKAction.repeatForever(SKAction.animate(with: etTextures, timePerFrame: 0.15))
        et.position = CGPoint(x: view.frame.width*0.2, y: view.frame.height*0.05+view.frame.width/8)
        et.size = CGSize(width: view.frame.width/3.5, height: view.frame.width/3.5)
        et.zPosition = 4
        self.addChild(et)
        et.run(etAnimation)

        
        homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        homeButton.position = CGPoint(x:0+view.frame.width/40, y: view.frame.height-view.frame.width/40)
        homeButton.zPosition = 10
        homeButton.alpha = 0.7
       self.addChild(homeButton)
        
        marsSky = SKSpriteNode(imageNamed: "marsBackground")
        marsSky.size = CGSize(width: view.frame.width, height: view.frame.height)
        marsSky.position = CGPoint(x: 0+view.frame.width/2, y: 0+view.frame.height/2)
        marsSky.zPosition = 1
        self.addChild(marsSky)
        
      
        
        
        
         if UIDevice.current.userInterfaceIdiom == .phone {
              marsSky.texture = marsIphone
            rocket.setScale(0.8)
            et.setScale(0.82)
            flyAlien.setScale(0.83)
                moon.position = CGPoint(x: view.frame.width*0.5, y: view.frame.height*0.96-moon.frame.height*0.5)
               et.position = CGPoint(x: view.frame.width*0.2, y: view.frame.height*0.01+et.frame.height*0.5)
                flyAlien.position = CGPoint(x:0+view.frame.width/8, y: view.frame.height*0.51+view.frame.width/16)
            rocket.position = CGPoint(x: view.frame.width*0.95-rocket.frame.width*0.5, y: view.frame.height*0.1+rocket.frame.height*0.5)
            homeButton.size = CGSize(width: view.frame.width/17, height: view.frame.width/17)
            homeButton.position = CGPoint(x:0+view.frame.width/34, y: view.frame.height-view.frame.width/34)
         
            
             if view.bounds.width == 812.0{
                 homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
                homeButton.texture = homeX
                homeButton.position = CGPoint(x:homeButton.frame.width*0.8, y: view.frame.height-homeButton.frame.height*0.7)
                   marsSky.texture = marsBackX

            }
            
        }
        
        
        
        
        
        if let musicURL = Bundle.main.url(forResource: "alienGameSound", withExtension: "mp3") {
            backgroundMusic = SKAudioNode(url: musicURL)
            if (UserDefaults.standard.bool(forKey: "sound")) == true{
                self.addChild(backgroundMusic)
            }
        }
        
        
        
        
        
        scene?.scaleMode = .resizeFill
        
    }
    
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           let touch = touches.first!
        
          if et.contains(touch.location(in: self)){
            
             alienToDo = 0
          
            if alienToDo == 0{
            raio.zPosition = 10
                
                   alienToDo = Int(arc4random_uniform(5))
                if alienToDo == 0 {
                    colorX = UIColor(red:0.87, green:0.26, blue:0.26, alpha:1.0)
                }else if alienToDo == 1 {
                    colorX = UIColor(red:0.98, green:0.96, blue:0.47, alpha:1.0)
                }else if alienToDo == 2 {
                     colorX = UIColor(red:1.00, green:0.65, blue:0.28, alpha:1.0)
                }else if alienToDo == 3 {
                    colorX = UIColor(red:0.96, green:0.16, blue:1.00, alpha:1.0)
                }else if alienToDo == 4 {
                    colorX = UIColor(red:0.13, green:1.00, blue:0.22, alpha:1.0)
                }
                
        var  color = SKAction.sequence([alienGunSound,SKAction.colorize(with: colorX, colorBlendFactor: 1, duration: 0), SKAction.fadeAlpha(to: 1, duration: 0.25),SKAction.fadeAlpha(to: 0, duration: 1)])
                  if (UserDefaults.standard.bool(forKey: "sound")) == false{
                    color = SKAction.sequence([SKAction.colorize(with: colorX, colorBlendFactor: 1, duration: 0), SKAction.fadeAlpha(to: 1, duration: 0.25),SKAction.fadeAlpha(to: 0, duration: 1)])
                }
          raio.run(color)
            }else if alienToDo == 1{
                if (UserDefaults.standard.bool(forKey: "sound")) == true{
                et.run(alienSpeech)
                }
            }
        }
        
        
        if homeButton.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "scenesSelector")!
            scene.scaleMode = .resizeFill
           let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
        if flyAlien.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "alienGame")!
            scene.scaleMode = .resizeFill
           let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
        
        if moon.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "GameScene")!
            let transition = SKTransition.fade(withDuration: 1)
            scene.scaleMode = .resizeFill
            self.view?.presentScene(scene, transition: transition)
        }
        
         if rocket.contains(touch.location(in: self)){
            
            if rocketActing == false {
                rocketActing = true
             addChild(fireEmitter)
            
                
             
                
                let rocketPath = SKAction.sequence([SKAction.wait(forDuration: 0.8),SKAction.move(to: CGPoint(x: (view?.frame.width)!+(view?.frame.width)!/6, y: (view?.frame.height)!+(view?.frame.width)!/4), duration: 4.5)])
                  if (UserDefaults.standard.bool(forKey: "sound")) == true{
                    sounds = SKAudioNode(fileNamed: "rocketSound.mp3")
                    sounds.autoplayLooped = false
                    addChild(sounds)
                    sounds.run(SKAction.play())
                }
            var  rocketPathBack = SKAction.sequence([SKAction.wait(forDuration: 0.5),SKAction.move(to: CGPoint(x: (view?.frame.width)!*0.95-(view?.frame.width)!/18, y: (view?.frame.height)!*0.13+(view?.frame.width)!/6), duration: 4.5)])
                
  if UIDevice.current.userInterfaceIdiom == .phone {
     rocketPathBack = SKAction.sequence([SKAction.wait(forDuration: 0.5),SKAction.move(to: CGPoint(x: (view?.frame.width)!*0.95-rocket.frame.width*0.5, y: (view?.frame.height)!*0.1+rocket.frame.height*0.5), duration: 4.5)])
                }
              
            rocket.run(rocketPath, completion:{
                self.rocket.run(rocketPathBack, completion:
                    {self.fireEmitter.removeFromParent()
                        self.rocketActing=false
                }
                    
                )
                
                
            })
            }
        }
        
        
        
        
        
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        if rocketActing == true{
           fireEmitter.position.y = rocket.frame.minY+rocket.frame.height*0.16
            fireEmitter.position.x = rocket.frame.midX-rocket.frame.width*0.08
    
}
    }

}
