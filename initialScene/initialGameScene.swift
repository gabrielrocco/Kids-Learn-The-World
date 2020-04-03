//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit

class initialGameScene: SKScene {
    
    var iniciarBt = SKSpriteNode(imageNamed: "btNode")
     var wordsBt = SKSpriteNode(imageNamed: "btNode")
      var portuguesBt = SKSpriteNode(imageNamed: "portuguesImg")
     var englishBt = SKSpriteNode(imageNamed: "englishImg")
    var ingles = "ingles"
     var portugues = "portugues"
    var idiomaString = "portugues"
    var textoIniciar = SKSpriteNode()
    
    func idiomaSet(){
       
     
        if  UserDefaults.standard.string(forKey: "idioma") == "ingles"{
             textoIniciar.texture = SKTexture(imageNamed: "sceneText")
            textoIniciar.size = CGSize(width: (view?.frame.width)!/10.5, height: (view?.frame.height)!/45)
        }else if  UserDefaults.standard.string(forKey: "idioma") == "portugues"{
             textoIniciar.texture = SKTexture(imageNamed: "cenaText")
            textoIniciar.size = CGSize(width: (view?.frame.width)!/10.5, height: (view?.frame.height)!/45)
        }
        
 
    }
    
    
    
    
    
    
    
    
    override func didMove(to view: SKView) {
      
    
   
        
        if (UserDefaults.standard.string(forKey: "idioma")) == nil {
            UserDefaults.standard.set(portugues, forKey: "idioma")
            
        }else{
            idiomaString = (UserDefaults.standard.string(forKey: "idioma"))!
            
        }
        idiomaSet()
        
        
        
        
        
        
        
         iniciarBt.size = CGSize(width: self.frame.width/4.5, height: self.frame.height/20)
        iniciarBt.position = CGPoint(x: self.frame.width/2, y: self.frame.height/1.8)
        iniciarBt.zPosition = 1
        self.addChild(iniciarBt)
        
       
        
        textoIniciar.position = CGPoint(x: 0, y: 0)
        textoIniciar.zPosition = 2
        iniciarBt.addChild(textoIniciar)
        
       
        wordsBt.size = CGSize(width: self.frame.width/4.5, height: self.frame.height/20)
        wordsBt.position = CGPoint(x: self.frame.width/2, y: self.frame.height/1.8-view.frame.height/23)
        wordsBt.zPosition = 1
        self.addChild(wordsBt)
        
        portuguesBt.size = CGSize(width: self.frame.width/25, height: self.frame.width/35.5)
        portuguesBt.position = CGPoint(x: self.frame.width/2-self.frame.width/14+self.frame.width/25, y: self.frame.height/1.8-view.frame.height/23-self.frame.height/12.5)
        portuguesBt.zPosition = 2
        self.addChild(portuguesBt)
        
        englishBt.size = CGSize(width: self.frame.width/25, height: self.frame.width/35.5)
        englishBt.position = CGPoint(x: self.frame.width/2+self.frame.width/14-self.frame.width/25, y: self.frame.height/1.8-view.frame.height/23-self.frame.height/12.5)
        englishBt.zPosition = 2
        self.addChild(englishBt)
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        
        
        
        if iniciarBt.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "scenesSelector")!
            let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
        if wordsBt.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "words")!
            let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
        
        
        if portuguesBt.contains(touch.location(in: self)){
            UserDefaults.standard.set(portugues, forKey: "idioma")
            UserDefaults.standard.synchronize()
            idiomaSet()
        }
        
        if englishBt.contains(touch.location(in: self)){
            
            
            IAPHandler.shared.fetchAvailableProducts()
            IAPHandler.shared.purchaseStatusBlock = {[weak self] (type) in
                guard let strongSelf = self else{ return }
                if type == .purchased {
                    let alertView = UIAlertController(title: "PURCHASE", message: type.message(), preferredStyle: .alert)
                    let action = UIAlertAction(title: "OK", style: .default, handler: { (alert) in
                        
                    })
                    alertView.addAction(action)
                   
                  strongSelf.present(alertView, animated: true, completion: nil)
                }
            }
            
            
            
            
            
            
            /*
            UserDefaults.standard.set(ingles, forKey: "idioma")
            UserDefaults.standard.synchronize()
            idiomaSet()
 
 */
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
      
    
}
    
  
  
    
    

}
