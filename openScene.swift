//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit

class openScene: SKScene {
    
    //TODAS AS CENAS
    
    var background = SKSpriteNode(imageNamed: "ipadOpen")
   var  xBackTexture = SKTexture(imageNamed: "xOpen")
    var  phoneOpenTexture = SKTexture(imageNamed: "phoneOpen")
    
    
    
    
   
    
    
    override func didMove(to view: SKView) {
        

   
        
        
        
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            background.texture = phoneOpenTexture
            
            
            if view.bounds.width == 812.0{
                background.texture = xBackTexture
                
            }
        }
        
        background.size = CGSize(width: view.frame.width, height: view.frame.height)
        background.position = CGPoint(x: 0+view.frame.width/2, y: 0+view.frame.height/2)
        
    
      addChild(background)
        
        func Go(){
        let scene = GameScene(fileNamed: "scenesSelector")!
        scene.scaleMode = .resizeFill
            let transition = SKTransition.fade(withDuration: 1)
        self.view?.presentScene(scene, transition: transition)
  
        }
        

        background.run(SKAction.wait(forDuration: 1.5),completion:
            {
                Go()
        }
        )
        
        
  
   scene?.scaleMode = .resizeFill
        
    }
    
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        
/*
        if homeButton.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "initialGame")!
            scene.scaleMode = .aspectFill
            let transition = SKTransition.doorway(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
       */
        
        
        
        
        
        
        
     
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
       
    
}


}
