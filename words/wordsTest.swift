//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import SpriteKit
import GameplayKit

class wordsTest: SKScene {
    
        var audioRunning = false
      var  spoken = false
let wait = SKAction.wait(forDuration: 1.5)
    var piso2 = SKSpriteNode(imageNamed: "pisoWord")
    var piso3 = SKSpriteNode(imageNamed: "pisoWord")
      var beeParticle = (SKEmitterNode(fileNamed: "beeParticle"))!
     var treeParticle = (SKEmitterNode(fileNamed: "leafParticle"))!
      var rainParticle = (SKEmitterNode(fileNamed: "rainParticle"))!

       var palavraTexto = [Character]()
     var piso = SKSpriteNode(imageNamed: "pisoWord")
        var backgroundMusic = SKAudioNode()
    var homeButton = SKSpriteNode(imageNamed: "homeBt")
     var helpButton = SKSpriteNode(imageNamed: "helpBt")
      var wordModeButton = SKSpriteNode(imageNamed: "wordModeBt")
    
    
    var instructions = SKSpriteNode(imageNamed: "wordHelpPt1")
    var helpPt1Texture = SKTexture(imageNamed: "wordHelpPt1")
    var helpPt2Texture = SKTexture(imageNamed: "wordHelpPt2")
    var helpIn1Texture = SKTexture(imageNamed: "wordHelpIn1")
    var helpIn2Texture = SKTexture(imageNamed: "wordHelpIn2")
    var settingsOn = false
    var okBt = SKSpriteNode(imageNamed: "okAlien")
    var helpNumber = 1
    
    
        var letter1 = SKSpriteNode(imageNamed: "letterPlaceholder")
            var letter2 = SKSpriteNode(imageNamed: "letterPlaceholder")
            var letter3 = SKSpriteNode(imageNamed: "letterPlaceholder")
            var letter4 = SKSpriteNode(imageNamed: "letterPlaceholder")
            var letter5 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letter6 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letter7 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letter8 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letter9 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letter10 = SKSpriteNode(imageNamed: "letterPlaceholder")
    
  
    
    var settingsX = SKTexture(imageNamed: "settingsBtX")
    var homeX = SKTexture(imageNamed: "homeBtX")
    
    var wordModeX = SKTexture(imageNamed: "wordModeX")
    var helpX = SKTexture(imageNamed: "helpX")
    
    
    var falta = 0
    var trophyOn = false
      var  scaleTrophy = SKAction.sequence([SKAction.scale(to: 1.5, duration: 1.1), SKAction.wait(forDuration: 1.5), SKAction.scale(to: 1.6, duration: 0.4), SKAction.scale(to: 0, duration: 0.3)])
           var trophy = SKSpriteNode(imageNamed: "trophie")
    
    
    
    
    var letterCube1 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letterCube2 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letterCube3 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letterCube4 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letterCube5 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letterCube6 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letterCube7 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letterCube8 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letterCube9 = SKSpriteNode(imageNamed: "letterPlaceholder")
    var letterCube10 = SKSpriteNode(imageNamed: "letterPlaceholder")
    
    
    var wordMode = 1
    
    
    var letter1Moves = false
     var letter2Moves = false
     var letter3Moves = false
     var letter4Moves = false
     var letter5Moves = false
     var letter6Moves = false
     var letter7Moves = false
     var letter8Moves = false
     var letter9Moves = false
     var letter10Moves = false
    
     var letterTexture = SKTexture(imageNamed: "letterPlaceholder")
    
    var letras = 3
    
    
    
    
    
    var l1 = SKLabelNode(fontNamed: "Arial")
    var l2 = SKLabelNode(fontNamed: "Arial")
     var l3 = SKLabelNode(fontNamed: "Arial")
     var l4 = SKLabelNode(fontNamed: "Arial")
     var l5 = SKLabelNode(fontNamed: "Arial")
     var l6 = SKLabelNode(fontNamed: "Arial")
     var l7 = SKLabelNode(fontNamed: "Arial")
     var l8 = SKLabelNode(fontNamed: "Arial")
     var l9 = SKLabelNode(fontNamed: "Arial")
     var l10 = SKLabelNode(fontNamed: "Arial")
    


var groundTexture = SKTexture(imageNamed: "ground")
    
    
     var settingsButton = SKSpriteNode(imageNamed: "settingsBt")
     var nextWord = SKSpriteNode(imageNamed: "nextWord")
      var previousWord = SKSpriteNode(imageNamed: "previousWord")
    var rabo = SKSpriteNode(imageNamed: "rabo")
    var palavra = SKLabelNode()
    var img = SKSpriteNode(imageNamed: "boat")
    var selector = 0
var idioma = String()
    
    //Texturas
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
    var smokeBoat = SKEmitterNode()
    let polvoTexture1 = SKTexture(imageNamed: "polvo1")
    let polvoTexture2 = SKTexture(imageNamed: "polvo2")
    let polvoTexture3 = SKTexture(imageNamed: "polvo3")
    let polvoTexture4 = SKTexture(imageNamed: "polvo4")
    let fishTexture1 = SKTexture(imageNamed: "fish1W")
    let fishTexture2 = SKTexture(imageNamed: "fish2W")
    let fishTexture3 = SKTexture(imageNamed: "fish3W")
    let fishTexture4 = SKTexture(imageNamed: "fish4W")
     var helice = SKSpriteNode(imageNamed: "helice")
    let crab1 = SKTexture(imageNamed: "crabLeft1")
    let crab2 = SKTexture(imageNamed: "crab2")
    let crab3 = SKTexture(imageNamed: "crab3")
    let crab4 = SKTexture(imageNamed: "crab4")
    let jellyfishTexture1 = SKTexture(imageNamed: "jellyfish1")
    let jellyfishTexture2 = SKTexture(imageNamed: "jellyfish2")
    let jellyfishTexture3 = SKTexture(imageNamed: "jellyfish3")
    let jellyfishTexture4 = SKTexture(imageNamed: "jellyfish4")
    let jellyfishTexture5 = SKTexture(imageNamed: "jellyfish5")
    let spiderTexture1 = SKTexture(imageNamed: "spider1")
    let spiderTexture2 = SKTexture(imageNamed: "spider2")
    let spiderTexture3 = SKTexture(imageNamed: "spider3")
    let spiderTexture4 = SKTexture(imageNamed: "spider4")
    let ladybugTexture1 = SKTexture(imageNamed: "ladybug1")
    let ladybugTexture2 = SKTexture(imageNamed: "ladybug2")
    let ladybugTexture3 = SKTexture(imageNamed: "ladybug3")
    let ladybugTexture4 = SKTexture(imageNamed: "ladybug4")
    let antTexture1 = SKTexture(imageNamed: "ant1")
    let antTexture2 = SKTexture(imageNamed: "ant2")
    let antTexture3 = SKTexture(imageNamed: "ant3")
    let antTexture4 = SKTexture(imageNamed: "ant4")
    let owlTexture1 = SKTexture(imageNamed: "owl1")
    let owlTexture2 = SKTexture(imageNamed: "owl2")
    let owlTexture3 = SKTexture(imageNamed: "owl3")
    let owlTexture4 = SKTexture(imageNamed: "owl4")
    let owlTexture5 = SKTexture(imageNamed: "owl5")
    let owlTexture6 = SKTexture(imageNamed: "owl6")
    let snailTexture1 = SKTexture(imageNamed: "snail1")
     let snailTexture2 = SKTexture(imageNamed: "snail2")
    let snailTexture3 = SKTexture(imageNamed: "snail3")
    let baiacuTexture1 = SKTexture(imageNamed: "baiacuNormal1")
    let baiacuTexture2 = SKTexture(imageNamed: "baiacuNormal2")
    let baiacuTexture3 = SKTexture(imageNamed: "baiacuNormal3")
    let baiacuTexture4 = SKTexture(imageNamed: "baiacuNormal4")
    let baiacuTexture5 = SKTexture(imageNamed: "baiacuNormal5")

    //Arrays
    let Textures = [SKTexture(imageNamed: "boat"),SKTexture(imageNamed: "fish1W"),SKTexture(imageNamed: "crab2"), SKTexture(imageNamed: "polvo1"),SKTexture(imageNamed: "baiacuNormal1"),SKTexture(imageNamed: "submarine1"),SKTexture(imageNamed: "jellyfish1"),SKTexture(imageNamed: "sharkW")]
    var nomesPt = ["BARCO","PEIXE","CARANGUEJO","POLVO","BAIACU","SUBMARINO","ÁGUA VIVA","TUBARÃO"]
     var nomesIn = ["BOAT","FISH","CRAB","OCTOPUS","PUFFERFISH","SUBMARINE","JELLYFISH","SHARK"]
 
    let audioIn = ["boat","fish","crab","octopus","pufferfish","submarine","jellyfish","shark"]
    let audioPt = ["barco","peixe","caranguejo","polvo","baiacu","submarino","aguaviva","tubarao"]
    
    //Actions
    let sunAnimate = SKAction.repeatForever(SKAction.rotate(byAngle: -1, duration: 3))
    let planeAnimate = SKAction.repeatForever(SKAction.sequence([SKAction.rotate(toAngle: .pi/13, duration: 3),SKAction.rotate(toAngle: -.pi/13, duration: 3)]))
    let moonAnimate = SKAction.repeatForever(SKAction.sequence([SKAction.fadeAlpha(to: 0.55, duration: 2),SKAction.fadeAlpha(to: 1, duration: 2)]))
       let jellyfishAnimate = SKAction.repeatForever(SKAction.sequence([SKAction.rotate(byAngle: .pi*2, duration: 0.5),SKAction.wait(forDuration: 2),SKAction.rotate(byAngle: -.pi*2, duration: 0.5),SKAction.wait(forDuration: 2)]))
      let rotateHelice = SKAction.repeatForever(SKAction.rotate(byAngle: 25, duration: 1))

    var i = 0
    var random = Int(arc4random_uniform(2))
    
    
    
    func sayWord(){
        if falta == 0{
            spoken = true
            audioRunning = false
        }
        if audioRunning == false{
            audioRunning = true
            if (UserDefaults.standard.bool(forKey: "sound")) == true{
                if idioma == "ingles" {
                    let play = SKAction.playSoundFileNamed(audioIn[selector], waitForCompletion: true)
                    backgroundMusic.run(SKAction.changeVolume(to: 0.1, duration: 0))
                    img.run(play, completion:
                        {
                            self.backgroundMusic.run(SKAction.changeVolume(to: 1, duration: 0.8))
                            self.audioRunning = false
                    })
                }else  if idioma == "portugues"{
                    backgroundMusic.run(SKAction.changeVolume(to: 0.1, duration: 0))
                    let play = SKAction.playSoundFileNamed(audioPt[selector], waitForCompletion: true)
                    img.run(play, completion:
                        {
                            self.audioRunning = false
                            self.backgroundMusic.run(SKAction.changeVolume(to: 1, duration: 0.8))
                    })
                }
                
            }
        }
        
    }
    
    
    
    func positionFix() {
        random = Int(arc4random_uniform(2))
        
        if random == 0 {
        letterCube3.position = CGPoint(x: (view?.frame.width)!*0.1, y: (view?.frame.height)!*1.2)
        letterCube10.position = CGPoint(x: (view?.frame.width)!*0.19, y: (view?.frame.height)!*1.2)
        letterCube5.position = CGPoint(x: (view?.frame.width)!*0.27, y: (view?.frame.height)!*1.2)
        letterCube1.position = CGPoint(x: (view?.frame.width)!*0.36, y: (view?.frame.height)!*1.2)
        letterCube6.position = CGPoint(x: (view?.frame.width)!*0.45, y: (view?.frame.height)!*1.2)
        letterCube9.position = CGPoint(x: (view?.frame.width)!*0.54, y: (view?.frame.height)!*1.2)
        letterCube2.position = CGPoint(x: (view?.frame.width)!*0.63, y: (view?.frame.height)!*1.2)
        letterCube8.position = CGPoint(x: (view?.frame.width)!*0.72, y: (view?.frame.height)!*1.2)
        letterCube4.position = CGPoint(x: (view?.frame.width)!*0.81, y: (view?.frame.height)!*1.2)
        letterCube7.position = CGPoint(x: (view?.frame.width)!*0.91, y: (view?.frame.height)!*1.2)
        }else if random == 1 {
            letterCube2.position = CGPoint(x: (view?.frame.width)!*0.1, y: (view?.frame.height)!*1.2)
            letterCube4.position = CGPoint(x: (view?.frame.width)!*0.19, y: (view?.frame.height)!*1.2)
            letterCube6.position = CGPoint(x: (view?.frame.width)!*0.27, y: (view?.frame.height)!*1.2)
            letterCube9.position = CGPoint(x: (view?.frame.width)!*0.36, y: (view?.frame.height)!*1.2)
            letterCube1.position = CGPoint(x: (view?.frame.width)!*0.45, y: (view?.frame.height)!*1.2)
            letterCube10.position = CGPoint(x: (view?.frame.width)!*0.54, y: (view?.frame.height)!*1.2)
            letterCube7.position = CGPoint(x: (view?.frame.width)!*0.63, y: (view?.frame.height)!*1.2)
            letterCube5.position = CGPoint(x: (view?.frame.width)!*0.72, y: (view?.frame.height)!*1.2)
            letterCube8.position = CGPoint(x: (view?.frame.width)!*0.81, y: (view?.frame.height)!*1.2)
            letterCube3.position = CGPoint(x: (view?.frame.width)!*0.91, y: (view?.frame.height)!*1.2)
        }
        
  
    }
    
    
    
    func letterOrganize(){
        
        spoken = false
        trophyOn = false
        scene?.removeAllActions()
        
        letter1Moves = false
        letter2Moves = false
        letter3Moves = false
        letter4Moves = false
        letter5Moves = false
        letter6Moves = false
        letter7Moves = false
        letter8Moves = false
        letter9Moves = false
        letter10Moves = false
        
        letterCube1.physicsBody?.isDynamic = false
        letterCube2.physicsBody?.isDynamic = false
        letterCube3.physicsBody?.isDynamic = false
        letterCube4.physicsBody?.isDynamic = false
        letterCube5.physicsBody?.isDynamic = false
        letterCube6.physicsBody?.isDynamic = false
        letterCube7.physicsBody?.isDynamic = false
        letterCube8.physicsBody?.isDynamic = false
        letterCube9.physicsBody?.isDynamic = false
        letterCube10.physicsBody?.isDynamic = false
        
        //Remove tudo para deixar ajeitado hehehe'
              letter1.removeFromParent()
              letter2.removeFromParent()
              letter3.removeFromParent()
              letter4.removeFromParent()
              letter5.removeFromParent()
              letter6.removeFromParent()
              letter7.removeFromParent()
              letter8.removeFromParent()
              letter9.removeFromParent()
              letter10.removeFromParent()
        
        
        
        
      
        

        
        //verifica quantas letras têm:
        if idioma == "portugues" {
            letras = nomesPt[selector].count
        }else if idioma == "ingles"{
              letras = nomesIn[selector].count
        }
        //Checar a palavra
        if idioma == "portugues" {
            palavraTexto = Array(nomesPt[selector])
            if letras == 3{
                falta = 3
                  l1.text = String(palavraTexto[0])
                  l2.text = String(palavraTexto[1])
                 l3.text = String(palavraTexto[2])
            }else if letras == 4 {
                falta = 4
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                 l4.text = String(palavraTexto[3])
            }else if letras == 5 {
                falta = 5
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
            }else if letras == 6 {
                falta = 6
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                 l6.text = String(palavraTexto[5])
            }else if letras == 7 {
                falta = 7
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                l6.text = String(palavraTexto[5])
                 l7.text = String(palavraTexto[6])
            }else if letras == 8 {
                falta = 8
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                l6.text = String(palavraTexto[5])
                l7.text = String(palavraTexto[6])
                 l8.text = String(palavraTexto[7])
            }else if letras == 9 {
                falta = 9
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                l6.text = String(palavraTexto[5])
                l7.text = String(palavraTexto[6])
                l8.text = String(palavraTexto[7])
                l9.text = String(palavraTexto[8])
            }else if letras == 10 {
                falta = 10
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                l6.text = String(palavraTexto[5])
                l7.text = String(palavraTexto[6])
                l8.text = String(palavraTexto[7])
                l9.text = String(palavraTexto[8])
                l10.text = String(palavraTexto[9])
            }
          
        }else if idioma == "ingles"{
            palavraTexto = Array(nomesIn[selector])
            if letras == 3{
                falta = 3
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
            }else if letras == 4 {
                falta = 4
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
            }else if letras == 5 {
                falta = 5
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
            }else if letras == 6 {
                falta = 6
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                l6.text = String(palavraTexto[5])
            }else if letras == 7 {
                falta = 7
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                l6.text = String(palavraTexto[5])
                l7.text = String(palavraTexto[6])
            }else if letras == 8 {
                falta = 8
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                l6.text = String(palavraTexto[5])
                l7.text = String(palavraTexto[6])
                l8.text = String(palavraTexto[7])
            }else if letras == 9 {
                falta = 9
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                l6.text = String(palavraTexto[5])
                l7.text = String(palavraTexto[6])
                l8.text = String(palavraTexto[7])
                l9.text = String(palavraTexto[8])
            }else if letras == 10 {
                falta = 10
                l1.text = String(palavraTexto[0])
                l2.text = String(palavraTexto[1])
                l3.text = String(palavraTexto[2])
                l4.text = String(palavraTexto[3])
                l5.text = String(palavraTexto[4])
                l6.text = String(palavraTexto[5])
                l7.text = String(palavraTexto[6])
                l8.text = String(palavraTexto[7])
                l9.text = String(palavraTexto[8])
                l10.text = String(palavraTexto[9])
            }
            
        }
        
        l1.removeFromParent()
        letterCube1.removeFromParent()
        l2.removeFromParent()
        letterCube2.removeFromParent()
        l3.removeFromParent()
        letterCube3.removeFromParent()
        l4.removeFromParent()
        letterCube4.removeFromParent()
        l5.removeFromParent()
        letterCube5.removeFromParent()
        l6.removeFromParent()
        letterCube6.removeFromParent()
        l7.removeFromParent()
        letterCube7.removeFromParent()
        l8.removeFromParent()
        letterCube8.removeFromParent()
        l9.removeFromParent()
        letterCube9.removeFromParent()
        l10.removeFromParent()
        letterCube10.removeFromParent()
    
        
        
        physicsRedo()
   
        
        
        if letras == 3{
            
           
            
            
            scene?.run(wait, completion:
                {
                    self.physicsRedo()
                    self.letter1Moves = true
                    self.letter2Moves = true
                    self.letter3Moves = true
            }
            )
           
            letterCube1.physicsBody?.isDynamic = true
            letterCube2.physicsBody?.isDynamic = true
            letterCube3.physicsBody?.isDynamic = true

            
            addChild(letterCube1)
            letterCube1.addChild(l1)
            addChild(letterCube2)
            letterCube2.addChild(l2)
            addChild(letterCube3)
            letterCube3.addChild(l3)
            
              letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
             letter2.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.33)
            letter3.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
            
             if UIDevice.current.userInterfaceIdiom == .phone {
                letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
                letter2.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.38)
                letter3.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
            }
            
            
            addChild(letter1)
             addChild(letter2)
             addChild(letter3)
        }else if letras == 4{
            scene?.run(wait, completion:
                {
                    self.physicsRedo()
                    self.letter1Moves = true
                    self.letter2Moves = true
                    self.letter3Moves = true
                    self.letter4Moves = true
            }
            )
         
            
            letterCube1.physicsBody?.isDynamic = true
            letterCube2.physicsBody?.isDynamic = true
            letterCube3.physicsBody?.isDynamic = true
            letterCube4.physicsBody?.isDynamic = true
            addChild(letterCube1)
            letterCube1.addChild(l1)
            addChild(letterCube2)
            letterCube2.addChild(l2)
            addChild(letterCube3)
            letterCube3.addChild(l3)
            addChild(letterCube4)
            letterCube4.addChild(l4)
            
            letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter3.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
              letter4.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            
              if UIDevice.current.userInterfaceIdiom == .phone {
                
                letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter3.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter4.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
            }
            
            addChild(letter1)
            addChild(letter2)
            addChild(letter3)
             addChild(letter4)
        }else if letras == 5{
            
            letterCube1.physicsBody?.isDynamic = true
            letterCube2.physicsBody?.isDynamic = true
            letterCube3.physicsBody?.isDynamic = true
            letterCube4.physicsBody?.isDynamic = true
            letterCube5.physicsBody?.isDynamic = true
            scene?.run(wait, completion:
                {
                    self.physicsRedo()
                    self.letter1Moves = true
                    self.letter2Moves = true
                    self.letter3Moves = true
                    self.letter4Moves = true
                     self.letter5Moves = true
            }
            )
            
            addChild(letterCube1)
            letterCube1.addChild(l1)
            addChild(letterCube2)
            letterCube2.addChild(l2)
            addChild(letterCube3)
            letterCube3.addChild(l3)
            addChild(letterCube4)
            letterCube4.addChild(l4)
            addChild(letterCube5)
            letterCube5.addChild(l5)
            letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.33)
            letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
            letter3.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.33)
            letter4.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
             letter5.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.33)
             if UIDevice.current.userInterfaceIdiom == .phone {
                letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.38)
                letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
                letter3.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.38)
                letter4.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
                letter5.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.38)
            }
            addChild(letter1)
            addChild(letter2)
            addChild(letter3)
            addChild(letter4)
            addChild(letter5)
        }else if letras == 6{
            letterCube1.physicsBody?.isDynamic = true
            letterCube2.physicsBody?.isDynamic = true
            letterCube3.physicsBody?.isDynamic = true
            letterCube4.physicsBody?.isDynamic = true
            letterCube5.physicsBody?.isDynamic = true
            letterCube6.physicsBody?.isDynamic = true
            scene?.run(wait, completion:
                {
                    self.physicsRedo()
                    self.letter1Moves = true
                    self.letter2Moves = true
                    self.letter3Moves = true
                    self.letter4Moves = true
                    self.letter5Moves = true
                      self.letter6Moves = true
            }
            )
            addChild(letterCube1)
            letterCube1.addChild(l1)
            addChild(letterCube2)
            letterCube2.addChild(l2)
            addChild(letterCube3)
            letterCube3.addChild(l3)
            addChild(letterCube4)
            letterCube4.addChild(l4)
            addChild(letterCube6)
            letterCube6.addChild(l6)
            addChild(letterCube5)
            letterCube5.addChild(l5)
            letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter4.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter5.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
             letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
              if UIDevice.current.userInterfaceIdiom == .phone {
                letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter4.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter5.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                
            }
            addChild(letter1)
            addChild(letter2)
            addChild(letter3)
            addChild(letter4)
            addChild(letter5)
            addChild(letter6)
        }else if letras == 7{
            
            letterCube1.physicsBody?.isDynamic = true
            letterCube2.physicsBody?.isDynamic = true
            letterCube3.physicsBody?.isDynamic = true
            letterCube4.physicsBody?.isDynamic = true
            letterCube5.physicsBody?.isDynamic = true
            letterCube6.physicsBody?.isDynamic = true
            letterCube7.physicsBody?.isDynamic = true
            scene?.run(wait, completion:
                {
                    self.physicsRedo()
                    self.letter1Moves = true
                    self.letter2Moves = true
                    self.letter3Moves = true
                    self.letter4Moves = true
                    self.letter5Moves = true
                    self.letter6Moves = true
                     self.letter7Moves = true
            }
            )
            addChild(letterCube1)
            letterCube1.addChild(l1)
            addChild(letterCube2)
            letterCube2.addChild(l2)
            addChild(letterCube3)
            letterCube3.addChild(l3)
            addChild(letterCube4)
            letterCube4.addChild(l4)
            addChild(letterCube6)
            letterCube6.addChild(l6)
            addChild(letterCube7)
            letterCube7.addChild(l7)
            addChild(letterCube5)
            letterCube5.addChild(l5)
            letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*3, y: (view?.frame.height)!*0.33)
            letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.33)
            letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
            letter4.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.33)
            letter5.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
            letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.33)
              letter7.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*3, y: (view?.frame.height)!*0.33)
              if UIDevice.current.userInterfaceIdiom == .phone {
                letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*3, y: (view?.frame.height)!*0.38)
                letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.38)
                letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
                letter4.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.38)
                letter5.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
                letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.38)
                letter7.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*3, y: (view?.frame.height)!*0.38)
            }
            addChild(letter1)
            addChild(letter2)
            addChild(letter3)
            addChild(letter4)
            addChild(letter5)
            addChild(letter6)
             addChild(letter7)
        }else if letras == 8{
            letterCube1.physicsBody?.isDynamic = true
            letterCube2.physicsBody?.isDynamic = true
            letterCube3.physicsBody?.isDynamic = true
            letterCube4.physicsBody?.isDynamic = true
            letterCube5.physicsBody?.isDynamic = true
            letterCube6.physicsBody?.isDynamic = true
            letterCube7.physicsBody?.isDynamic = true
            letterCube8.physicsBody?.isDynamic = true
            scene?.run(wait, completion:
                {
                    self.physicsRedo()
                    self.letter1Moves = true
                    self.letter2Moves = true
                    self.letter3Moves = true
                    self.letter4Moves = true
                    self.letter5Moves = true
                    self.letter6Moves = true
                    self.letter7Moves = true
                    self.letter8Moves = true
            }
            )
            addChild(letterCube1)
            letterCube1.addChild(l1)
            addChild(letterCube2)
            letterCube2.addChild(l2)
            addChild(letterCube3)
            letterCube3.addChild(l3)
            addChild(letterCube4)
            letterCube4.addChild(l4)
            addChild(letterCube6)
            letterCube6.addChild(l6)
            addChild(letterCube7)
            letterCube7.addChild(l7)
            addChild(letterCube5)
            letterCube5.addChild(l5)
            addChild(letterCube8)
            letterCube8.addChild(l8)
            letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*3-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter4.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter5.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
            letter7.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
             letter8.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*3+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
              if UIDevice.current.userInterfaceIdiom == .phone {
                letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*3-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter4.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter5.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
                letter7.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter8.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*3+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
            }
            addChild(letter1)
            addChild(letter2)
            addChild(letter3)
            addChild(letter4)
            addChild(letter5)
            addChild(letter6)
            addChild(letter7)
            addChild(letter8)
        }else if letras == 9{
            letterCube1.physicsBody?.isDynamic = true
            letterCube2.physicsBody?.isDynamic = true
            letterCube3.physicsBody?.isDynamic = true
            letterCube4.physicsBody?.isDynamic = true
            letterCube5.physicsBody?.isDynamic = true
            letterCube6.physicsBody?.isDynamic = true
            letterCube7.physicsBody?.isDynamic = true
            letterCube8.physicsBody?.isDynamic = true
            letterCube9.physicsBody?.isDynamic = true
            scene?.run(wait, completion:
                {
                    self.physicsRedo()
                    self.letter1Moves = true
                    self.letter2Moves = true
                    self.letter3Moves = true
                    self.letter4Moves = true
                    self.letter5Moves = true
                    self.letter6Moves = true
                    self.letter7Moves = true
                    self.letter8Moves = true
                    self.letter9Moves = true
            }
            )
            addChild(letterCube1)
            letterCube1.addChild(l1)
            addChild(letterCube2)
            letterCube2.addChild(l2)
            addChild(letterCube3)
            letterCube3.addChild(l3)
            addChild(letterCube4)
            letterCube4.addChild(l4)
            addChild(letterCube6)
            letterCube6.addChild(l6)
            addChild(letterCube7)
            letterCube7.addChild(l7)
            addChild(letterCube8)
            letterCube8.addChild(l8)
            addChild(letterCube9)
            letterCube9.addChild(l9)
            addChild(letterCube5)
            letterCube5.addChild(l5)
            letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*4, y: (view?.frame.height)!*0.33)
            letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*3, y: (view?.frame.height)!*0.33)
            letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.33)
            letter4.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
            letter5.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.33)
            letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
            letter7.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.33)
            letter8.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*3, y: (view?.frame.height)!*0.33)
            letter9.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*4, y: (view?.frame.height)!*0.33)
              if UIDevice.current.userInterfaceIdiom == .phone {
                letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*4, y: (view?.frame.height)!*0.38)
                letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*3, y: (view?.frame.height)!*0.38)
                letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.38)
                letter4.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
                letter5.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.38)
                letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
                letter7.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2, y: (view?.frame.height)!*0.38)
                letter8.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*3, y: (view?.frame.height)!*0.38)
                letter9.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*4, y: (view?.frame.height)!*0.38)
                
            }
            addChild(letter1)
            addChild(letter2)
            addChild(letter3)
            addChild(letter4)
            addChild(letter5)
            addChild(letter6)
            addChild(letter7)
            addChild(letter8)
            addChild(letter9)
        }else if letras == 10{
            letterCube1.physicsBody?.isDynamic = true
            letterCube2.physicsBody?.isDynamic = true
            letterCube3.physicsBody?.isDynamic = true
            letterCube4.physicsBody?.isDynamic = true
            letterCube5.physicsBody?.isDynamic = true
            letterCube6.physicsBody?.isDynamic = true
            letterCube7.physicsBody?.isDynamic = true
            letterCube8.physicsBody?.isDynamic = true
            letterCube9.physicsBody?.isDynamic = true
            letterCube10.physicsBody?.isDynamic = true
            scene?.run(wait, completion:
                {
                    self.physicsRedo()
                    self.letter1Moves = true
                    self.letter2Moves = true
                    self.letter3Moves = true
                    self.letter4Moves = true
                    self.letter5Moves = true
                    self.letter6Moves = true
                    self.letter7Moves = true
                    self.letter8Moves = true
                    self.letter9Moves = true
                     self.letter10Moves = true
            }
            )
           
            addChild(letterCube1)
            letterCube1.addChild(l1)
            addChild(letterCube2)
            letterCube2.addChild(l2)
            addChild(letterCube3)
            letterCube3.addChild(l3)
            addChild(letterCube4)
            letterCube4.addChild(l4)
            addChild(letterCube5)
            letterCube5.addChild(l5)
            addChild(letterCube6)
            letterCube6.addChild(l6)
            addChild(letterCube7)
            letterCube7.addChild(l7)
            addChild(letterCube8)
            letterCube8.addChild(l8)
            addChild(letterCube9)
            letterCube9.addChild(l9)
            addChild(letterCube10)
            letterCube10.addChild(l10)
            letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*4-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*3-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter4.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.33)
            letter5.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter7.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter8.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter9.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*3+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
            letter10.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*4+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.33)
               if UIDevice.current.userInterfaceIdiom == .phone {
                letter1.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*4-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter2.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*3-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter3.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.09*2-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter4.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045-(view?.frame.width)!*0.09, y: (view?.frame.height)!*0.38)
                letter5.position = CGPoint(x: (view?.frame.width)!*0.5-(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter6.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter7.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter8.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*2+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter9.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*3+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
                letter10.position = CGPoint(x: (view?.frame.width)!*0.5+(view?.frame.width)!*0.09*4+(view?.frame.width)!*0.045, y: (view?.frame.height)!*0.38)
            }
            addChild(letter1)
            addChild(letter2)
            addChild(letter3)
            addChild(letter4)
            addChild(letter5)
            addChild(letter6)
            addChild(letter7)
            addChild(letter8)
            addChild(letter9)
            addChild(letter10)
        }
        
        
        
         positionFix()
        
        
        
        
        
        if palavraTexto == ["O", "C", "T", "O", "P", "U", "S"]{
            self.letterCube1.physicsBody = nil
            letter1Moves = false
            letterCube1.physicsBody?.isDynamic = false
            letterCube1.position = letter1.position
        }else if palavraTexto == ["P", "U", "F", "F", "E", "R", "F", "I", "S", "H"]{
            self.letterCube3.physicsBody = nil
            self.letterCube7.physicsBody = nil
            letter3Moves = false
            letterCube3.physicsBody?.isDynamic = false
            letterCube3.position = letter3.position
            letter7Moves = false
            letterCube7.physicsBody?.isDynamic = false
            letterCube7.position = letter7.position
        }else if palavraTexto == ["J", "E", "L", "L", "Y", "F", "I", "S", "H"]{
            self.letterCube4.physicsBody = nil
            letter4Moves = false
            letterCube4.physicsBody?.isDynamic = false
            letterCube4.position = letter4.position
        }else if palavraTexto == ["P", "E", "I", "X", "E"]{
            self.letterCube2.physicsBody = nil
            letter2Moves = false
            letterCube2.physicsBody?.isDynamic = false
            letterCube2.position = letter2.position
        }else if palavraTexto == ["C", "A", "R", "A", "N", "G", "U", "E", "J", "O"]{
            self.letterCube4.physicsBody = nil
            letter4Moves = false
            letterCube4.physicsBody?.isDynamic = false
            letterCube4.position = letter4.position
        }else if palavraTexto == ["P", "O", "L", "V", "O"]{
            self.letterCube5.physicsBody = nil
            letter5Moves = false
            letterCube5.physicsBody?.isDynamic = false
            letterCube5.position = letter5.position
        }else if palavraTexto == ["B", "A", "I", "A", "C", "U"]{
            self.letterCube2.physicsBody = nil
            letter2Moves = false
            letterCube2.physicsBody?.isDynamic = false
            letterCube2.position = letter2.position
        }else if palavraTexto == ["Á", "G", "U", "A", " ", "V", "I", "V", "A"]{
            self.letterCube9.physicsBody = nil
            self.letterCube5.physicsBody = nil
            self.letterCube6.physicsBody = nil
            letter9Moves = false
            letterCube9.physicsBody?.isDynamic = false
            letterCube9.position = letter9.position
            letter5Moves = false
            letterCube5.physicsBody?.isDynamic = false
            letterCube5.position = letter5.position
            letter6Moves = false
            letterCube6.physicsBody?.isDynamic = false
            letterCube6.position = letter6.position
        }else {
            let random = Int(arc4random_uniform(UInt32(palavraTexto.count)))+1
            if random == 1{
                self.letterCube1.physicsBody = nil
                letter1Moves = false
                letterCube1.physicsBody?.isDynamic = false
                letterCube1.position = letter1.position
            }else  if random == 2{
                self.letterCube2.physicsBody = nil
                letter2Moves = false
                letterCube2.physicsBody?.isDynamic = false
                letterCube2.position = letter2.position
            }else  if random == 3{
                self.letterCube3.physicsBody = nil
                letter3Moves = false
                letterCube3.physicsBody?.isDynamic = false
                letterCube3.position = letter3.position
            }else  if random == 4{
                self.letterCube4.physicsBody = nil
                letter4Moves = false
                letterCube4.physicsBody?.isDynamic = false
                letterCube4.position = letter4.position
            }else  if random == 5{
                self.letterCube5.physicsBody = nil
                letter5Moves = false
                letterCube5.physicsBody?.isDynamic = false
                letterCube5.position = letter5.position
            }else  if random == 6{
                self.letterCube6.physicsBody = nil
                letter6Moves = false
                letterCube6.physicsBody?.isDynamic = false
                letterCube6.position = letter6.position
            }else  if random == 7{
                self.letterCube7.physicsBody = nil
                letter7Moves = false
                letterCube7.physicsBody?.isDynamic = false
                letterCube7.position = letter7.position
            }else  if random == 8{
                self.letterCube8.physicsBody = nil
                letter8Moves = false
                letterCube8.physicsBody?.isDynamic = false
                letterCube8.position = letter8.position
            }else  if random == 9{
                self.letterCube9.physicsBody = nil
                letter9Moves = false
                letterCube9.physicsBody?.isDynamic = false
                letterCube9.position = letter9.position
            }else  if random == 2{
                self.letterCube10.physicsBody = nil
                letter10Moves = false
                letterCube10.physicsBody?.isDynamic = false
                letterCube10.position = letter10.position
            }
        }
       

    }
   
    func physicsRedo(){
        letterCube1.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube1.size)
        letterCube2.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube2.size)
        letterCube3.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube3.size)
        letterCube4.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube1.size)
        letterCube5.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube2.size)
        letterCube6.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube3.size)
        letterCube7.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube1.size)
        letterCube8.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube2.size)
        letterCube9.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube3.size)
        letterCube10.physicsBody = SKPhysicsBody(texture: letterTexture, size: letterCube3.size)
        letterCube1.physicsBody?.restitution = 0.3
        letterCube1.physicsBody?.allowsRotation = false
        letterCube2.physicsBody?.restitution = 0.3
        letterCube2.physicsBody?.allowsRotation = false
        letterCube3.physicsBody?.restitution = 0.3
        letterCube3.physicsBody?.allowsRotation = false
        letterCube4.physicsBody?.restitution = 0.3
        letterCube4.physicsBody?.allowsRotation = false
        letterCube5.physicsBody?.restitution = 0.3
        letterCube5.physicsBody?.allowsRotation = false
        letterCube6.physicsBody?.restitution = 0.3
        letterCube6.physicsBody?.allowsRotation = false
        letterCube7.physicsBody?.restitution = 0.3
        letterCube7.physicsBody?.allowsRotation = false
        letterCube8.physicsBody?.restitution = 0.3
        letterCube8.physicsBody?.allowsRotation = false
        letterCube9.physicsBody?.restitution = 0.3
        letterCube9.physicsBody?.allowsRotation = false
        letterCube10.physicsBody?.restitution = 0.3
        letterCube10.physicsBody?.allowsRotation = false
        letterCube1.physicsBody?.allowsRotation = false
        letterCube2.physicsBody?.allowsRotation = false
        letterCube3.physicsBody?.allowsRotation = false
        letterCube4.physicsBody?.allowsRotation = false
        letterCube5.physicsBody?.allowsRotation = false
        letterCube6.physicsBody?.allowsRotation = false
        letterCube7.physicsBody?.allowsRotation = false
        letterCube8.physicsBody?.allowsRotation = false
        letterCube9.physicsBody?.allowsRotation = false
        letterCube10.physicsBody?.allowsRotation = false
    }
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didMove(to view: SKView) {
        
        
        instructions.size = CGSize(width: view.frame.height*0.8/1.34564, height: view.frame.height*0.8)
        instructions.position = CGPoint(x:-view.frame.width/2, y: -view.frame.height/2)
        instructions.zPosition = 201
        okBt.size = CGSize(width: view.frame.width*0.16*0.95, height: view.frame.height*0.06*0.95)
        okBt.position = CGPoint(x:-view.frame.width/2, y: -view.frame.height*0.21)
        okBt.zPosition = 202
        
        addChild(instructions)
        addChild(okBt)
        
        if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
            instructions.texture = helpPt1Texture
        }else if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
            instructions.texture = helpIn1Texture
        }
        
        
        
         idioma = UserDefaults.standard.string(forKey: "idioma")!
        
        if idioma == "portugues" {
          falta = 5
        }else if idioma == "ingles"{
           falta = 4
        }
        
        trophy.size = CGSize(width: view.frame.width*0.2*1.1, height: view.frame.width*0.24*1.1)
        trophy.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        trophy.zPosition = 120
        trophy.setScale(0)
        addChild(trophy)
        
       
     
       
      
        
        piso.size = CGSize(width: view.frame.width*1.1, height: view.frame.height*0.1)
        piso.position = CGPoint(x: view.frame.width/2, y: -piso.frame.height*2)
        piso.physicsBody = SKPhysicsBody(texture: groundTexture, size: CGSize(width:  view.frame.width*1.1, height: view.frame.height*0.108))
        piso.physicsBody?.isDynamic = false
        addChild(piso)
        piso.zPosition = 200
        
        piso2.size = CGSize(width: view.frame.width*0.05, height: view.frame.height)
        piso2.position = CGPoint(x: -view.frame.width*0.05, y:view.frame.height/2)
        piso2.physicsBody = SKPhysicsBody(texture: groundTexture, size:  CGSize(width: view.frame.width*0.05, height: view.frame.height))
        piso2.physicsBody?.isDynamic = false
        addChild(piso2)
        
        
        piso3.size = CGSize(width: view.frame.width*0.05, height: view.frame.height)
        piso3.position = CGPoint(x: view.frame.width+view.frame.width*0.05, y:view.frame.height/2)
        piso3.physicsBody = SKPhysicsBody(texture: groundTexture, size:  CGSize(width: view.frame.width*0.05, height: view.frame.height))
        piso3.physicsBody?.isDynamic = false
        addChild(piso3)
        
     

        letter1.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
         letter2.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
          letter3.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letter4.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letter5.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letter6.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letter7.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letter8.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letter9.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letter10.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        
        letterCube1.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letterCube2.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letterCube3.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letterCube4.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letterCube5.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letterCube6.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letterCube7.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letterCube8.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letterCube9.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        letterCube10.size = CGSize(width: view.frame.width*0.08, height: view.frame.width*0.08)
        
          letter1.alpha = 0.8
          letter2.alpha = 0.8
          letter3.alpha = 0.8
          letter4.alpha = 0.8
          letter5.alpha = 0.8
          letter6.alpha = 0.8
          letter7.alpha = 0.8
          letter8.alpha = 0.8
          letter9.alpha = 0.8
          letter10.alpha = 0.8
        
          letter1.zPosition = 2
          letter2.zPosition = 2
          letter3.zPosition = 2
          letter4.zPosition = 2
          letter5.zPosition = 2
          letter6.zPosition = 2
          letter7.zPosition = 2
          letter8.zPosition = 2
          letter9.zPosition = 2
          letter10.zPosition = 2
        
        letterCube1.zPosition = 3
        letterCube2.zPosition = 3
        letterCube3.zPosition = 3
        letterCube4.zPosition = 3
        letterCube5.zPosition = 3
        letterCube6.zPosition = 3
        letterCube7.zPosition = 3
        letterCube8.zPosition = 3
        letterCube9.zPosition = 3
        letterCube10.zPosition = 3
        
        l1.horizontalAlignmentMode = .center
        l1.verticalAlignmentMode = .center
        l2.horizontalAlignmentMode = .center
        l2.verticalAlignmentMode = .center
        l3.horizontalAlignmentMode = .center
        l3.verticalAlignmentMode = .center
        l4.horizontalAlignmentMode = .center
        l4.verticalAlignmentMode = .center
        l5.horizontalAlignmentMode = .center
        l5.verticalAlignmentMode = .center
        l6.horizontalAlignmentMode = .center
        l6.verticalAlignmentMode = .center
        l7.horizontalAlignmentMode = .center
        l7.verticalAlignmentMode = .center
        l8.horizontalAlignmentMode = .center
        l8.verticalAlignmentMode = .center
        l9.horizontalAlignmentMode = .center
        l9.verticalAlignmentMode = .center
        l10.horizontalAlignmentMode = .center
        l10.verticalAlignmentMode = .center
        l1.zPosition = 4
        l2.zPosition = 4
        l3.zPosition = 4
        l4.zPosition = 4
        l5.zPosition = 4
        l6.zPosition = 4
        l7.zPosition = 4
        l8.zPosition = 4
        l9.zPosition = 4
        l10.zPosition = 4
        
      
        
        
        beeParticle.zPosition = 6
        beeParticle.position = CGPoint(x: view.frame.width*0.51, y: view.frame.height*0.675)
        beeParticle.particleSize = CGSize(width: view.frame.width*0.05*10, height: view.frame.width*0.03*10)
beeParticle.particleBirthRate = 2
        
        
        

        treeParticle.position = CGPoint(x: view.frame.width*0.51, y: view.frame.height*0.675)
        treeParticle.particleSize = CGSize(width: view.frame.width*0.05, height: view.frame.width*0.03)
        
         rainParticle.position = CGPoint(x: view.frame.width*0.5, y: view.frame.height*0.7)
         rainParticle.particleSize = CGSize(width: view.frame.width*0.05*2, height: view.frame.width*0.03*2)
        rainParticle.emissionAngle = .pi*1.5
        rainParticle.emissionAngleRange = 0
        rainParticle.zPosition = 1
 
    
        
        
       
      animate()
        
        

        
        rabo.size =  CGSize(width: view.frame.width*0.1, height: view.frame.width*0.05)
        rabo.position = CGPoint(x:view.frame.width*0.5+view.frame.width*0.075, y: view.frame.height*0.68)

        
        palavra = SKLabelNode(fontNamed: "Arial")
        palavra.fontSize = 100.0
        if idioma == "portugues" {
            palavra.text = "\(nomesPt[0])"
        } else  if idioma == "ingles"{
            palavra.text = "\(nomesIn[0])"
        }
        palavra.horizontalAlignmentMode = .center
        palavra.position = CGPoint(x: view.frame.width*0.5, y: view.frame.height*0.3)
        palavra.zPosition = 10
        addChild(palavra)
        
     
        
        img.position = CGPoint(x: view.frame.width/2, y: view.frame.height*0.75)
        img.size = CGSize(width: view.frame.width/4, height: view.frame.width/4)
        img.zPosition = 5
        addChild(img)
        
        
        //OUTROS
        
        smokeBoat = (SKEmitterNode(fileNamed: "smokeBoatParticle"))!
        smokeBoat.zPosition = 2
        smokeBoat.position = CGPoint(x: view.frame.width*0.5-view.frame.width*0.08, y: view.frame.height*0.75-view.frame.height*0.153)
addChild(smokeBoat)
        helice.size = CGSize(width: (view.frame.width/4)*0.07*2, height: view.frame.width/6*0.44*2)
        helice.position = CGPoint(x:view.frame.width*0.5+view.frame.width*0.204, y: view.frame.height*0.7)
        helice.xScale = -1
        helice.zPosition = 4
     
        
        
       
      
        
        
        
        
        //Adiciona a música inicial de fundo
        
        if let musicURL = Bundle.main.url(forResource: "wordsSound", withExtension: "mp3") {
           backgroundMusic = SKAudioNode(url: musicURL)
              if (UserDefaults.standard.bool(forKey: "sound")) == true{
            self.addChild(backgroundMusic)
            }
        }

     

     
        //PARTE COMUM A TODOS AS SCENES:
        
        helpButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        helpButton.position = CGPoint(x: view.frame.width-view.frame.width/40, y: view.frame.height-view.frame.width/40)
        helpButton.zPosition = 10
        helpButton.alpha = 0.7
       self.addChild(helpButton)
        
        
        wordModeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        wordModeButton.position = CGPoint(x: view.frame.width-view.frame.width/40, y: view.frame.height-view.frame.width/20-view.frame.width/40.5)
        wordModeButton.zPosition = 10
        wordModeButton.alpha = 0.7
        self.addChild(wordModeButton)
        
        
        
        
        homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        homeButton.position = CGPoint(x:0+view.frame.width/40, y: view.frame.height-view.frame.width/40)
        homeButton.zPosition = 10
        homeButton.alpha = 0.7
        self.addChild(homeButton)
        
      


        
        
        
        previousWord.size = CGSize(width: view.frame.width/14, height: view.frame.width/12)
        previousWord.position = CGPoint(x:view.frame.width/12, y: view.frame.height/2)
        previousWord.zPosition = 10
        previousWord.alpha=0.8
        self.addChild(previousWord)
        
        nextWord.size = CGSize(width: view.frame.width/14, height: view.frame.width/12)
        nextWord.position = CGPoint(x:view.frame.width-view.frame.width/12, y: view.frame.height/2)
        nextWord.zPosition = 10
        nextWord.alpha=0.8
        self.addChild(nextWord)
        
    
    
        
        
        
        if UIDevice.current.userInterfaceIdiom == .phone {
//abaxaqui
            
            instructions.size = CGSize(width: view.frame.height*0.7, height: view.frame.height*0.95)
            okBt.size = CGSize(width: view.frame.width*0.16*0.8, height: view.frame.height*0.07)
             scaleTrophy = SKAction.sequence([SKAction.scale(to: 0.9, duration: 1.1), SKAction.wait(forDuration: 1.5), SKAction.scale(to: 1, duration: 0.4), SKAction.scale(to: 0, duration: 0.3)])
        
            //aqui
            
            nextWord.setScale(0.8)
            previousWord.setScale(0.8)
            img.setScale(0.8)
            palavra.fontSize = 80.0
            letter1.setScale(0.8)
              letter2.setScale(0.8)
              letter3.setScale(0.8)
            letter4.setScale(0.8)
            letter5.setScale(0.8)
            letter6.setScale(0.8)
            letter7.setScale(0.8)
            letter8.setScale(0.8)
            letter9.setScale(0.8)
            letter10.setScale(0.8)

            letterCube1.setScale(0.8)
            letterCube2.setScale(0.8)
            letterCube3.setScale(0.8)
            letterCube4.setScale(0.8)
            letterCube5.setScale(0.8)
            letterCube6.setScale(0.8)
            letterCube7.setScale(0.8)
            letterCube8.setScale(0.8)
            letterCube9.setScale(0.8)
            letterCube10.setScale(0.8)
            
           treeParticle.setScale(0.88)
            treeParticle.particlePositionRange.dx = 100
            rainParticle.setScale(0.75)
            nextWord.position = CGPoint(x:view.frame.width-view.frame.width/12, y: view.frame.height*0.6)
            previousWord.position = CGPoint(x:view.frame.width/12, y: view.frame.height*0.6)
            
             rabo.position = CGPoint(x:view.frame.width*0.5+view.frame.width*0.045, y: view.frame.height*0.68)
             treeParticle.position = CGPoint(x: view.frame.width*0.51, y: view.frame.height*0.6)
  
            homeButton.size = CGSize(width: view.frame.width/17, height: view.frame.width/17)
            homeButton.position = CGPoint(x:0+view.frame.width/34, y: view.frame.height-view.frame.width/34)
            
            helpButton.size = CGSize(width: view.frame.width/17, height: view.frame.width/17)
            helpButton.position = CGPoint(x: view.frame.width-view.frame.width/34, y: view.frame.height-view.frame.width/34)
            wordModeButton.size = CGSize(width: view.frame.width/17, height: view.frame.width/17)
            wordModeButton.position = CGPoint(x: view.frame.width-view.frame.width/34, y: view.frame.height-view.frame.width/17-view.frame.width/34.4)
            
            
            if view.bounds.width == 812.0{
            homeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
                            helpButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
                   wordModeButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
            
                homeButton.texture = homeX
                wordModeButton.texture = wordModeX
                helpButton.texture = helpX
                
                
                homeButton.position = CGPoint(x:homeButton.frame.width*0.8, y: view.frame.height-homeButton.frame.height*0.7)
                wordModeButton.position = CGPoint(x: view.frame.width-wordModeButton.frame.width*0.8*2.5, y: view.frame.height-wordModeButton.frame.height*0.7)
                helpButton.position = CGPoint(x: view.frame.width-helpButton.frame.width*0.8, y: view.frame.height-helpButton.frame.height*0.7)
                
                
                
                
                rabo.position = CGPoint(x:view.frame.width*0.5+view.frame.width*0.06, y: view.frame.height*0.68)
                   smokeBoat.position = CGPoint(x: view.frame.width*0.5-view.frame.width*0.08, y: view.frame.height*0.555)
                
            }
        }
            
            
        
            
            
            
          
        
        
        
       
  firstHelp()
        scene?.scaleMode = .resizeFill
        
    }
    
    
    func firstHelp(){
        if (UserDefaults.standard.bool(forKey: "firstHelpWord")) == false {
            if helpNumber != 2 {
                settingsOn = true
                if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                    instructions.texture = helpPt1Texture
                }else   if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                    instructions.texture = helpIn1Texture
                }
                okBt.position = CGPoint(x:(view?.frame.width)!*0.63, y: (view?.frame.height)!*0.16)
                instructions.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!/2)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    okBt.position = CGPoint(x:(view?.frame.width)!*0.58, y: (view?.frame.height)!*0.1)
                }
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
          let total = Textures.count
        
           var sizes = [CGSize(width: (self.view?.frame.width)!*0.24, height: (self.view?.frame.width)!*0.25),CGSize(width: (self.view?.frame.width)!*0.28, height: (self.view?.frame.width)!*0.25),CGSize(width: (self.view?.frame.width)!*0.38*0.8, height: (self.view?.frame.width)!*0.25*0.8),CGSize(width: (self.view?.frame.width)!*0.24, height: (self.view?.frame.width)!*0.25),CGSize(width: (self.view?.frame.width)!*0.3*1.3, height: (self.view?.frame.width)!*0.2*1.3),CGSize(width: (self.view?.frame.width)!*0.41, height: (self.view?.frame.width)!*0.25),CGSize(width: (self.view?.frame.width)!*0.2, height: (self.view?.frame.width)!*0.25),CGSize(width: (self.view?.frame.width)!*0.44, height: (self.view?.frame.width)!*0.25)]
        
         if UIDevice.current.userInterfaceIdiom == .phone {
             sizes = [CGSize(width: (self.view?.frame.width)!*0.8*0.24, height: (self.view?.frame.width)!*0.8*0.25),CGSize(width: (self.view?.frame.width)!*0.8*0.28, height: (self.view?.frame.width)!*0.8*0.25),CGSize(width: (self.view?.frame.width)!*0.8*0.38*0.8, height: (self.view?.frame.width)!*0.8*0.25*0.8),CGSize(width: (self.view?.frame.width)!*0.74*0.24, height: (self.view?.frame.width)!*0.74*0.25),CGSize(width: (self.view?.frame.width)!*0.8*0.3*1.3, height: (self.view?.frame.width)!*0.8*0.2*1.3),CGSize(width: (self.view?.frame.width)!*0.8*0.41, height: (self.view?.frame.width)!*0.8*0.25),CGSize(width: (self.view?.frame.width)!*0.8*0.2, height: (self.view?.frame.width)!*0.8*0.25),CGSize(width: (self.view?.frame.width)!*0.8*0.44, height: (self.view?.frame.width)!*0.8*0.25)]
            
        }
        
        
        if okBt.contains(touch.location(in: self)){
            if helpNumber == 1{
                helpNumber = 2
                if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                    instructions.texture = helpPt2Texture
                }else   if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                    instructions.texture = helpIn2Texture
                }
            }else if helpNumber == 2 {
                UserDefaults.standard.set(true, forKey: "firstHelpWord")
                UserDefaults.standard.synchronize()
                helpNumber = 1
                settingsOn = false
                okBt.position = CGPoint(x:-(view?.frame.width)!/2, y: -(view?.frame.height)!*0.21)
                instructions.position = CGPoint(x:-(view?.frame.width)!/2, y: -(view?.frame.height)!/2)
            }
        }
        
        
        if helpButton.contains(touch.location(in: self)){
            if  helpNumber != 2 {
                settingsOn = true
                if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
                    instructions.texture = helpPt1Texture
                }else   if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
                    instructions.texture = helpIn1Texture
                }
                okBt.position = CGPoint(x:(view?.frame.width)!*0.63, y: (view?.frame.height)!*0.16)
                instructions.position = CGPoint(x:(view?.frame.width)!/2, y: (view?.frame.height)!/2)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    okBt.position = CGPoint(x:(view?.frame.width)!*0.58, y: (view?.frame.height)!*0.1)
                }
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
    //    if wordModeButton.contains(touch.location(in: self)) || nextWord.contains(touch.location(in: self)) || previousWord.contains(touch.location(in: self)) {
      
        if img.contains(touch.location(in: self)) && nextWord.contains(touch.location(in: self)) || previousWord.contains(touch.location(in: self)) || wordModeButton.contains(touch.location(in: self))  {
            
        }else if img.contains(touch.location(in: self)) && settingsOn == false {
            sayWord()
        }
        
        //Voltar à Home
        if homeButton.contains(touch.location(in: self)){
            let scene = GameScene(fileNamed: "scenesSelector")!
            scene.scaleMode = .resizeFill
  let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
        }
         if wordModeButton.contains(touch.location(in: self)) && settingsOn == false {
            
            if wordMode == 1 {
                var  vemPiso =  SKAction.moveTo(y: 0, duration: 0.75)
                  if UIDevice.current.userInterfaceIdiom == .phone {
                     vemPiso =  SKAction.moveTo(y: piso.frame.height*0.27, duration: 0.75)
                }
                piso.run(vemPiso)
                wordMode = 2
                palavra.alpha = 0
                letterOrganize()
            }else if wordMode == 2{
                let vaiPiso =  SKAction.moveTo(y: -piso.frame.height*2, duration: 0.75)
                piso.run(vaiPiso)
                  wordMode = 1
                palavra.alpha = 1
                letter1.removeFromParent()
                letter2.removeFromParent()
                letter3.removeFromParent()
                letter4.removeFromParent()
                letter5.removeFromParent()
                letter6.removeFromParent()
                letter7.removeFromParent()
                letter8.removeFromParent()
                letter9.removeFromParent()
                letter10.removeFromParent()
                l1.removeFromParent()
                letterCube1.removeFromParent()
                l2.removeFromParent()
                letterCube2.removeFromParent()
                l3.removeFromParent()
                letterCube3.removeFromParent()
                l4.removeFromParent()
                letterCube4.removeFromParent()
                l5.removeFromParent()
                letterCube5.removeFromParent()
                l6.removeFromParent()
                letterCube6.removeFromParent()
                l7.removeFromParent()
                letterCube7.removeFromParent()
                l8.removeFromParent()
                letterCube8.removeFromParent()
                l9.removeFromParent()
                letterCube9.removeFromParent()
                l10.removeFromParent()
                letterCube10.removeFromParent()
            }
            
            
        }
        if nextWord.contains(touch.location(in: self)) && settingsOn == false{
            backgroundMusic.run(SKAction.changeVolume(to: 1, duration: 0))
            audioRunning = false
            trophy.setScale(0)
            trophy.removeAllActions()
            if selector < total-1 {
                selector += 1
                animate()
                if wordMode == 2{
                    letterOrganize()
                }
                img.texture = Textures[selector]
                img.size = sizes[selector]
                
                if idioma == "portugues" {
                    palavra.text = "\(nomesPt[selector])"
                } else  if idioma == "ingles"{
                    palavra.text = "\(nomesIn[selector])"
                }
            }else if  selector == total-1{
                selector = 0
                animate()
                if wordMode == 2{
                    letterOrganize()
                }
                img.size = sizes[selector]
                
                img.texture = Textures[selector]
                if idioma == "portugues" {
                    palavra.text = "\(nomesPt[selector])"
                } else  if idioma == "ingles"{
                    palavra.text = "\(nomesIn[selector])"
                }
            }
            
            
        }
        
        if previousWord.contains(touch.location(in: self)) && settingsOn == false{
            backgroundMusic.run(SKAction.changeVolume(to: 1, duration: 0))
            audioRunning = false
            trophy.setScale(0)
            trophy.removeAllActions()
            if selector > 0{
                selector -= 1
                animate()
                if wordMode == 2{
                    letterOrganize()
                }
                img.texture = Textures[selector]
                img.size = sizes[selector]
                
                if idioma == "portugues" {
                    palavra.text = "\(nomesPt[selector])"
                } else  if idioma == "ingles"{
                    palavra.text = "\(nomesIn[selector])"
                }
            }else if  selector == 0{
                selector = Textures.count-1
                animate()
                if wordMode == 2{
                    letterOrganize()
                }
                img.size = sizes[selector]
                
                img.texture = Textures[selector]
                if idioma == "portugues" {
                    palavra.text = "\(nomesPt[selector])"
                } else  if idioma == "ingles"{
                    palavra.text = "\(nomesIn[selector])"
                }
            }
            
        }
        
        
        
        
        
    }
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    func animate(){
        //Actions with Textures
      
     
        
       
        
      
        
        let baiacuTextures = [baiacuTexture2,baiacuTexture3,baiacuTexture4,baiacuTexture5,baiacuTexture4,baiacuTexture3,baiacuTexture2]
        let baiacuAction = SKAction.repeatForever(SKAction.animate(with: baiacuTextures, timePerFrame: 0.12))
        
           let crabTextures = [crab1,crab2,crab3,crab4,crab3,crab2]
          let crabAction = SKAction.repeatForever(SKAction.animate(with: crabTextures, timePerFrame: 0.12))
        
      
        let fishTextures = [fishTexture1,fishTexture2,fishTexture3,fishTexture4]
        let fishAnimate = SKAction.repeatForever(SKAction.animate(with: fishTextures, timePerFrame: 0.16))
        
     
        
        let polvoTextures = [polvoTexture1,polvoTexture2,polvoTexture3,polvoTexture4,polvoTexture3,polvoTexture2]
        let polvoAnimate = SKAction.repeatForever(SKAction.animate(with: polvoTextures, timePerFrame: 0.15))
        
      
        let jellyfishTextures = [jellyfishTexture1,jellyfishTexture2,jellyfishTexture3,jellyfishTexture4,jellyfishTexture5,jellyfishTexture4,jellyfishTexture3,jellyfishTexture2]
          let jellyfishAnimate2 = SKAction.repeatForever(SKAction.animate(with: jellyfishTextures, timePerFrame: 0.15))
        //Volta tudo ao normal
        img.alpha = 1
        img.zRotation = 0
        img.removeAllActions()
        img.position = CGPoint(x: (view?.frame.width)!/2, y: (view?.frame.height)!*0.75)
        smokeBoat.removeFromParent()
        helice.removeFromParent()
 rabo.removeFromParent()
        beeParticle.removeFromParent()
          palavra.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.3)
        treeParticle.removeFromParent()
        rainParticle.removeFromParent()
        
        
        
        
        
        //Seletor de animações
      
if selector == 0 {
            //barco
          self.addChild(smokeBoat)
        }else if selector == 1 {
            //peixe
           img.run(fishAnimate)
        }else if selector == 6 {
            //água viva
            img.run(jellyfishAnimate)
             img.run(jellyfishAnimate2)
            //AQUI
        }else if selector == 3 {
            //polvo
            img.run(polvoAnimate)
        }else if selector == 4 {
            //baiacu
           img.run(baiacuAction)
        }else if selector == 5 {
            //submarino
               if UIDevice.current.userInterfaceIdiom == .phone {
                helice.setScale(0.7)
                   helice.position = CGPoint(x:(view?.frame.width)!*0.66, y: (view?.frame.height)!*0.69)
                   if view?.bounds.width == 812.0{
             helice.position = CGPoint(x:(view?.frame.width)!*0.66, y: (view?.frame.height)!*0.68)
                }
            }
            helice.removeAllActions()
            addChild(helice)
            helice.run(rotateHelice)
        }else if selector == 2 {
            //caranguejo
            img.run(crabAction)
        }
       

       
        
        
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if letter1Moves == true {
              letterCube1.physicsBody?.isDynamic = true
        }
        if letter2Moves == true {
            letterCube2.physicsBody?.isDynamic = true
        }
        if letter3Moves == true {
            letterCube3.physicsBody?.isDynamic = true
        }
        if letter4Moves == true {
            letterCube4.physicsBody?.isDynamic = true
        }
        if letter5Moves == true {
            letterCube5.physicsBody?.isDynamic = true
        }
        if letter6Moves == true {
            letterCube6.physicsBody?.isDynamic = true
        }
        if letter7Moves == true {
            letterCube7.physicsBody?.isDynamic = true
        }
        if letter8Moves == true {
            letterCube8.physicsBody?.isDynamic = true
        }
        if letter9Moves == true {
            letterCube9.physicsBody?.isDynamic = true
        }
        if letter10Moves == true {
            letterCube10.physicsBody?.isDynamic = true
        }
        

          letterCube1.setScale(1)
        letterCube1.alpha = 1
        letterCube2.setScale(1)
        letterCube2.alpha = 1
        letterCube3.setScale(1)
        letterCube3.alpha = 1
        letterCube4.setScale(1)
        letterCube4.alpha = 1
        letterCube5.setScale(1)
        letterCube5.alpha = 1
        letterCube6.setScale(1)
        letterCube6.alpha = 1
        letterCube7.setScale(1)
        letterCube7.alpha = 1
        letterCube8.setScale(1)
        letterCube8.alpha = 1
        letterCube9.setScale(1)
        letterCube9.alpha = 1
        letterCube10.setScale(1)
        letterCube10.alpha = 1
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            letterCube1.setScale(0.8)
            
            letterCube2.setScale(0.8)
            
            letterCube3.setScale(0.8)
            
            letterCube4.setScale(0.8)
            
            letterCube5.setScale(0.8)
            
            letterCube6.setScale(0.8)
            
            letterCube7.setScale(0.8)
            
            letterCube8.setScale(0.8)
            
            letterCube9.setScale(0.8)
            
            letterCube10.setScale(0.8)
          
        }
    }
    
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

        

        let touch = touches.first!
        let position = touch.location(in: self)
        
        if letterCube1.contains(touch.location(in: self)) && letter1Moves == true{
               letterCube1.physicsBody?.isDynamic = false
            letterCube1.position = position
            letterCube1.setScale(1.1)
               if UIDevice.current.userInterfaceIdiom == .phone {
                  letterCube1.setScale(0.9)
            }
            letterCube1.alpha = 0.85
        }
        if letterCube2.contains(touch.location(in: self)) && letter2Moves == true{
              letterCube2.physicsBody?.isDynamic = false
            letterCube2.position = position
            letterCube2.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                letterCube2.setScale(0.9)
            }
            letterCube2.alpha = 0.85
        }
        if letterCube3.contains(touch.location(in: self)) && letter3Moves == true{
              letterCube3.physicsBody?.isDynamic = false
            letterCube3.position = position
            letterCube3.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                letterCube3.setScale(0.9)
            }
            letterCube3.alpha = 0.85
        }
        if letterCube4.contains(touch.location(in: self)) && letter4Moves == true{
              letterCube4.physicsBody?.isDynamic = false
            letterCube4.position = position
            letterCube4.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                letterCube4.setScale(0.9)
            }
            letterCube4.alpha = 0.85
        }
        if letterCube5.contains(touch.location(in: self)) && letter5Moves == true{
              letterCube5.physicsBody?.isDynamic = false
            letterCube5.position = position
            letterCube5.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                letterCube5.setScale(0.9)
            }
            letterCube5.alpha = 0.85
        }
        if letterCube6.contains(touch.location(in: self)) && letter6Moves == true{
              letterCube6.physicsBody?.isDynamic = false
            letterCube6.position = position
            letterCube6.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                letterCube6.setScale(0.9)
            }
            letterCube6.alpha = 0.85
        }
        if letterCube7.contains(touch.location(in: self)) && letter7Moves == true{
              letterCube7.physicsBody?.isDynamic = false
            letterCube7.position = position
            letterCube7.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                letterCube7.setScale(0.9)
            }
            letterCube7.alpha = 0.85
        }
        if letterCube8.contains(touch.location(in: self)) && letter8Moves == true{
              letterCube8.physicsBody?.isDynamic = false
            letterCube8.position = position
            letterCube8.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                letterCube8.setScale(0.9)
            }
            letterCube8.alpha = 0.85
        }
        if letterCube9.contains(touch.location(in: self)) && letter9Moves == true{
              letterCube9.physicsBody?.isDynamic = false
            letterCube9.position = position
            letterCube9.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                letterCube9.setScale(0.9)
            }
            letterCube9.alpha = 0.85
        }
        if letterCube10.contains(touch.location(in: self)) && letter10Moves == true{
              letterCube10.physicsBody?.isDynamic = false
            letterCube10.position = position
            letterCube10.setScale(1.1)
            if UIDevice.current.userInterfaceIdiom == .phone {
                letterCube10.setScale(0.9)
            }
            letterCube10.alpha = 0.85
        }
    }
    
    
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        if trophyOn == false && falta == 0 && wordMode == 2 && spoken == false{
            trophyOn = true
            spoken = true
            //codigo p trofeu
            trophy.run(scaleTrophy)
            sayWord() //spoken
            falta = 10
        }
        
        
        if wordMode == 2 {
            
            if letterCube1.intersects(letter1) && letter1Moves == true   {
                falta -= 1
                letter1Moves = false
                letterCube1.physicsBody?.isDynamic = false
                letterCube1.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube1.setScale(0.8)
                }
                letterCube1.zRotation = 0
                letterCube1.alpha = 1
                letterCube1.position = letter1.position
                
            }
            if letterCube2.intersects(letter2) && letter2Moves == true{
                falta -= 1
                letterCube2.removeFromParent()
                letter2Moves = false
                letterCube2.physicsBody?.isDynamic = false
                letterCube2.physicsBody?.affectedByGravity = false
                letterCube2.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube2.setScale(0.8)
                }
                letterCube2.zRotation = 0
                letterCube2.alpha = 1
                addChild(letterCube2)
                letterCube2.position = letter2.position
            }
            if letterCube3.intersects(letter3) && letter3Moves == true{
                falta -= 1
                letterCube3.removeFromParent()
                letter3Moves = false
                letterCube3.physicsBody?.isDynamic = false
                letterCube3.physicsBody?.affectedByGravity = false
                letterCube3.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube3.setScale(0.8)
                }
                letterCube3.alpha = 1
                letterCube3.zRotation = 0
                addChild(letterCube3)
                letterCube3.position = letter3.position
            }
            if letterCube4.intersects(letter4) && letter4Moves == true{
                falta -= 1
                letterCube4.removeFromParent()
                letter4Moves = false
                letterCube4.physicsBody?.isDynamic = false
                letterCube4.physicsBody?.affectedByGravity = false
                letterCube4.position = letter4.position
                letterCube4.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube4.setScale(0.8)
                }
                letterCube4.alpha = 1
                letterCube4.zRotation = 0
                addChild(letterCube4)
            }
            if letterCube5.intersects(letter5) && letter5Moves == true{
                falta -= 1
                letterCube5.removeFromParent()
                letter5Moves = false
                letterCube5.physicsBody?.isDynamic = false
                letterCube5.physicsBody?.affectedByGravity = false
                letterCube5.position = letter5.position
                letterCube5.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube5.setScale(0.8)
                }
                letterCube5.alpha = 1
                letterCube5.zRotation = 0
                addChild(letterCube5)
            }
            if letterCube6.intersects(letter6) && letter6Moves == true{
                falta -= 1
                letterCube6.removeFromParent()
                letter6Moves = false
                letterCube6.physicsBody?.isDynamic = false
                letterCube6.physicsBody?.affectedByGravity = false
                letterCube6.position = letter6.position
                letterCube6.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube6.setScale(0.8)
                }
                letterCube6.alpha = 1
                letterCube6.zRotation = 0
                addChild(letterCube6)
            }
            if letterCube7.intersects(letter7) && letter7Moves == true{
                falta -= 1
                letterCube7.removeFromParent()
                letter7Moves = false
                letterCube7.physicsBody?.isDynamic = false
                letterCube7.physicsBody?.affectedByGravity = false
                letterCube7.position = letter7.position
                letterCube7.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube7.setScale(0.8)
                }
                letterCube7.alpha = 1
                letterCube7.zRotation = 0
                addChild(letterCube7)
            }
            if letterCube8.intersects(letter8) && letter8Moves == true{
                falta -= 1
                letterCube8.removeFromParent()
                letter8Moves = false
                letterCube8.physicsBody?.isDynamic = false
                letterCube8.physicsBody?.affectedByGravity = false
                letterCube8.position = letter8.position
                letterCube8.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube8.setScale(0.8)
                }
                letterCube8.alpha = 1
                letterCube8.zRotation = 0
                addChild(letterCube8)
            }
            if letterCube9.intersects(letter9) && letter9Moves == true{
                falta -= 1
                letterCube9.removeFromParent()
                letter9Moves = false
                letterCube9.physicsBody?.isDynamic = false
                letterCube9.physicsBody?.affectedByGravity = false
                letterCube9.position = letter9.position
                letterCube9.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube9.setScale(0.8)
                }
                letterCube9.alpha = 1
                letterCube9.zRotation = 0
                addChild(letterCube9)
            }
            if letterCube10.intersects(letter9) && letter10Moves == true{
                falta -= 1
                letterCube10.removeFromParent()
                letter10Moves = false
                letterCube10.physicsBody?.isDynamic = false
                letterCube10.physicsBody?.affectedByGravity = false
                letterCube10.position = letter10.position
                letterCube10.setScale(1)
                if UIDevice.current.userInterfaceIdiom == .phone {
                    letterCube10.setScale(0.8)
                }
                letterCube10.alpha = 1
                letterCube10.zRotation = 0
                addChild(letterCube10)
            }
            
        }
    }
    
    
    
    
}
