//
//  GameScene.swift
//  The rabbit and the squirrel book
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//




import SpriteKit
import StoreKit
import Foundation


var  boughtOn = false
    var continueLabel = SKLabelNode()
var unlockBanner = SKSpriteNode()
var padlock1 = SKSpriteNode()
var padlock2 = SKSpriteNode()
var buyButton = SKSpriteNode()
var restoreButton = SKSpriteNode()
 var myAlert = UIAlertController()
var continueNode = SKSpriteNode()
    var welcomebool = false


class scenesSelector: SKScene {
    
   
     var settingsOnScreenSelector = false
    
     var ipadWelcome = SKSpriteNode(imageNamed: "ipadWelcome")
      var ipadWelcomeTexture = SKTexture(imageNamed: "ipadWelcome")
       var ipadWelcomeInTexture = SKTexture(imageNamed: "ipadWelcomeIn")
     let ipadWelcome2Texture = SKTexture(imageNamed: "ipadWelcome2")
     let ipadWelcome2InTexture = SKTexture(imageNamed: "ipadWelcome2In")
     let iphoneWelcomeTexture = SKTexture(imageNamed: "iphoneWelcome")
     let iphoneWelcomeInTexture = SKTexture(imageNamed: "iphoneWelcomeIn")
     let iphoneWelcome2InTexture = SKTexture(imageNamed: "iphoneWelcome2In")
      let iphoneWelcomeTexture2 = SKTexture(imageNamed: "iphoneWelcome2")
    
    
    
  
    var unlockBannerPtTexture  = SKTexture(imageNamed: "unlockBannerPt")
     var unlockBannerInTexture  = SKTexture(imageNamed: "unlockBannerIn")
    

    var soundButton = SKSpriteNode(imageNamed: "soundOn")
    var showWelcome = 0
    var soonLabel = SKLabelNode()
   
    var soundOnTexture = SKTexture(imageNamed: "soundOn")
    var soundOffTexture = SKTexture(imageNamed: "soundOff")
    
    
     var restoreInTexture = SKTexture(imageNamed: "restoreInBt")
       var restorePtTexture = SKTexture(imageNamed: "restorePtBt")
    
    

    var buyOr = "buy"
    
    var background = SKSpriteNode(imageNamed: "selector")
     var dog = SKSpriteNode(imageNamed: "dog1")
     var settingsBack = SKSpriteNode(imageNamed: "settingsBackground")
     var rabo = SKSpriteNode(imageNamed: "rabo")
      var sun = SKSpriteNode(imageNamed: "sun")
      var pipa = SKSpriteNode(imageNamed: "pipa")
     var polvo = SKSpriteNode(imageNamed: "polvo1")
     var book = SKSpriteNode(imageNamed: "book")
    let polvoTexture1 = SKTexture(imageNamed: "polvo1")
    let polvoTexture2 = SKTexture(imageNamed: "polvo2")
    let polvoTexture3 = SKTexture(imageNamed: "polvo3")
    let polvoTexture4 = SKTexture(imageNamed: "polvo4")

    
    
    var settingsButton = SKSpriteNode(imageNamed: "settingsBt")
    var backgroundMusic = SKAudioNode()
    var portuguesBt = SKSpriteNode(imageNamed: "portuguesImg")
    var englishBt = SKSpriteNode(imageNamed: "englishImg")
    var ingles = "ingles"
    var portugues = "portugues"
    var idiomaString = "portugues"
    
  var soundOn = true
    
    
      var idiomaLabel = SKLabelNode()
    var soundLabel = SKLabelNode()
     var unlockLabel = SKLabelNode()


    
    
    
    
    
    let backgroundX = SKTexture(imageNamed: "backX")
     let backgroundIP = SKTexture(imageNamed: "ipBack")
   
      var settingsX = SKTexture(imageNamed: "settingsBtX")
  

    
   
    
    

    
        func bannerBuyRemove(){
            welcomebool = false
            boughtOn = true
            buyButton.removeFromParent()
            continueNode.removeFromParent()
            continueLabel.removeFromParent()
            unlockBanner.removeFromParent()
    }
    
    
    
    
    func bannerRemove(){
        if showWelcome == 3 &&  welcomebool == true {
            buyButton.position = CGPoint(x: -(view?.frame.width)!*0.5, y: -(view?.frame.height)!*0.45)
            buyButton.zPosition = 55
            buyButton.setScale(1)
            continueNode.position = CGPoint(x: -(view?.frame.width)!, y: -(view?.frame.height)!)
            unlockBanner.position = CGPoint(x: -(view?.frame.width)!*1.5, y: -(view?.frame.height)!*0.23)
            welcomebool = false
        }
    }
    
    func setIdioma(){
        if UserDefaults.standard.string(forKey: "idioma") == "portugues"{
            unlockBanner.texture = unlockBannerPtTexture
            restoreButton.texture = restorePtTexture
            soonLabel.text = "EM BREVE"
           //sobeaqui
           
            if showWelcome == 0 {
                   continueLabel.text = "FINALIZAR"
              ipadWelcome.texture =  ipadWelcomeTexture
            if UIDevice.current.userInterfaceIdiom == .phone {
                ipadWelcome.texture = iphoneWelcomeTexture
            }
            }
            
            soonLabel.fontSize = 30
               idiomaLabel.text = "IDIOMA"
              soundLabel.text = "SOM"
            unlockLabel.text = "DESBLOQUEAR"
            
            
        }else if UserDefaults.standard.string(forKey: "idioma") == "ingles"{
              unlockBanner.texture = unlockBannerInTexture
            if showWelcome == 0 {
             continueLabel.text = "DONE"
                ipadWelcome.texture =  ipadWelcomeInTexture
                if UIDevice.current.userInterfaceIdiom == .phone {
                    ipadWelcome.texture = iphoneWelcomeInTexture
                }
            }
            
             restoreButton.texture = restoreInTexture
            soonLabel.text = "SOON"
            soonLabel.fontSize = 35
            idiomaLabel.text = "LANGUAGE"
            soundLabel.text = "SOUND"
             unlockLabel.text = "UNLOCK"
           
        }
        
        
    }

    
    
    

    
    func showAlert(){
        /*ATENÇÃO : ESTE MÉTODO FUNCIONA APENAS PARA APLICAÇÕES COM UM VIEWCONTROLLER, QUE É O CASO DESTA, CASO CONTRÁRIO
         PODERÃO EXISTIR ERROS POIS O CODIGO TENTARA EXIBIR O ALERTA NO VIEWCONTROLLER ROOT
         */
            myAlert = UIAlertController(title: "AVISO", message: "O aplicativo já foi liberado!", preferredStyle: .alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.view?.window?.rootViewController?.present(myAlert, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    func ParentalGate(){
        var  parentalArray = [Int()]
          var arrayString = [String()]
        var i = 0
        while i != 3 {
            let rand = Int(arc4random_uniform(10))
            parentalArray.append(rand)
            i += 1
        }
        
        if (UserDefaults.standard.string(forKey: "idioma")) == "portugues" {
             arrayString = ["zero", "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove"]
        }else if (UserDefaults.standard.string(forKey: "idioma")) == "ingles"{
                arrayString = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
            }
        

        let parentalInt = String("\(parentalArray[0])\(parentalArray[1])\(parentalArray[2])\(parentalArray[3])")
        
        
        
        if (UserDefaults.standard.string(forKey: "idioma")) == "portugues" {
            myAlert = UIAlertController(title: "CONTROLE PARENTAL", message: "Digite os números: \(arrayString[parentalArray[0]]), \(arrayString[parentalArray[1]]), \(arrayString[parentalArray[2]]) e \(arrayString[parentalArray[3]]) abaixo para prosseguir.", preferredStyle: .alert)
        }else if (UserDefaults.standard.string(forKey: "idioma")) == "ingles"{
             myAlert = UIAlertController(title: "PARENTAL GATE", message: "Enter the following numbers: \(arrayString[parentalArray[0]]), \(arrayString[parentalArray[1]]), \(arrayString[parentalArray[2]]) and \(arrayString[parentalArray[3]]) below to continue.", preferredStyle: .alert)
        }
        
        
      
        
    myAlert.addTextField(configurationHandler: { (textField) in
         if (UserDefaults.standard.string(forKey: "idioma")) == "portugues" {
    textField.placeholder = "Digite os números"
         }else if (UserDefaults.standard.string(forKey: "idioma")) == "ingles"{
             textField.placeholder = "Enter the numbers"
        }
    })
        

    myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (UITextAlert) in
        if myAlert.textFields![0].text == "\(String(parentalInt))" {
            
            if self.buyOr == "buy" {
                 IAPService.shared.purchase(product: .nonconsumable)
            }else if self.buyOr == "restore" {
                IAPService.shared.restorePurchases()
            }
        }else {
             if (UserDefaults.standard.string(forKey: "idioma")) == "portugues" {
             myAlert = UIAlertController(title: "ERRO", message: "Os números não conferem!", preferredStyle: .alert)
            }else if (UserDefaults.standard.string(forKey: "idioma")) == "ingles"{
                myAlert = UIAlertController(title: "FAILED", message: "The numbers don't match!", preferredStyle: .alert)
            }
            myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            UIApplication.shared.keyWindow?.rootViewController?.present(myAlert, animated: true, completion: nil)
            
        }
    
    }))
    UIApplication.shared.keyWindow?.rootViewController?.present(myAlert, animated: true, completion: nil)
    }
    
    
    
    
    
    
    func validate(){

        UserDefaults.standard.set(true, forKey: "unlockedSave")
        UserDefaults.standard.synchronize()
padlock1.removeFromParent()
        padlock2.removeFromParent()
        buyButton.alpha = 0.5
        restoreButton.alpha = 0.5
    }
    
    
    
    
    
    
      func validateRestore(){
        print("restore")
        UserDefaults.standard.set(true, forKey: "unlockedSave")
        UserDefaults.standard.synchronize()
        padlock1.removeFromParent()
        padlock2.removeFromParent()
        buyButton.alpha = 0.5
        restoreButton.alpha = 0.5
      
    }
    

    
    
    
    
    
  
    func organizeBanner(){
        
        welcomebool = true
        unlockBanner.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.5)
        unlockBanner.zPosition = 52
         unlockBanner.size = CGSize(width: (view?.frame.width)!*0.5, height: (view?.frame.height)!*0.9)
        
       
        showWelcome = 3
        
          if (UserDefaults.standard.string(forKey: "idioma")) == "portugues" {
        continueLabel.text = "NÃO, OBRIGADO!"
          }else if  (UserDefaults.standard.string(forKey: "idioma")) == "ingles" {
                continueLabel.text = "NO, THANK YOU!"
        }
        
        continueLabel.fontSize = 18
        continueLabel.zPosition = 55
        continueLabel.verticalAlignmentMode = .center
        continueLabel.horizontalAlignmentMode = .center
        
        continueNode.alpha = 0.8
        continueLabel.alpha = 0.8
        
        
          continueNode.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.12)
        
        
          if UIDevice.current.userInterfaceIdiom == .phone {
              unlockBanner.size = CGSize(width: (view?.frame.width)!*0.42, height: (view?.frame.height)!*0.95)
            continueLabel.fontSize = 12
            if view?.bounds.width == 812.0{
                unlockBanner.size = CGSize(width: (view?.frame.width)!*0.37, height: (view?.frame.height)!*0.95)
                  continueNode.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.09)
            }
          }
        
        continueNode.size = CGSize(width: continueLabel.frame.width*1.3, height: continueLabel.frame.height*1.5)
        continueNode.zPosition = 55
        
        buyButton.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.45)
buyButton.zPosition = 55
        buyButton.setScale(2)
    }
    
    
    override func didMove(to view: SKView) {
         boughtOn = false
 continueNode = SKSpriteNode(imageNamed: "continue")
    unlockBanner = SKSpriteNode(imageNamed: "unlockBannerPt")
        unlockBanner.position = CGPoint(x: -view.frame.width*1.5, y: -view.frame.height*0.5)
        continueNode.position = CGPoint(x: -view.frame.width*1.5, y: -view.frame.height*0.5)
        unlockBanner.zPosition = 52
        addChild(unlockBanner)
        
        
    padlock1 = SKSpriteNode(imageNamed: "lockImg")
    padlock2 = SKSpriteNode(imageNamed: "lockImg")
buyButton = SKSpriteNode(imageNamed: "buyBt")
restoreButton = SKSpriteNode(imageNamed: "restoreInBt")
        
        

        
        padlock1.size = CGSize(width: view.frame.width*0.024*1.3, height: view.frame.width*0.0367*1.3)
 padlock1.alpha = 0.8
        padlock1.zPosition = 7
        padlock1.position = CGPoint(x: view.frame.width*0.106, y: view.frame.height*0.08+view.frame.width/16.4)

        
        padlock2.size = CGSize(width: view.frame.width*0.024*1.3, height: view.frame.width*0.0367*1.3)
        padlock2.alpha = 0.8
        padlock2.zPosition = 7
        padlock2.position = CGPoint(x: view.frame.width*0.515 , y:view.frame.height*0.7 )
     
        
        
        
        if (UserDefaults.standard.string(forKey: "idioma")) == nil {
            UserDefaults.standard.set(portugues, forKey: "idioma")
            
        }else{
            idiomaString = (UserDefaults.standard.string(forKey: "idioma"))!
            
        }
        
        
        if UserDefaults.standard.bool(forKey: "unlockedSave") == true {
            buyButton.alpha = 0.5
            restoreButton.alpha = 0.5
        }else  if UserDefaults.standard.bool(forKey: "unlockedSave") == false {
         
            addChild(padlock1)
            addChild(padlock2)
        }
    


      
     
        
        
     

        
        
        
        
        
        soundButton.size = CGSize(width: view.frame.width/18, height: view.frame.width/18)
        soundButton.position = CGPoint(x: -view.frame.width*0.5, y: -view.frame.height*0.39)
        soundButton.zPosition = 51
        self.addChild(soundButton)
        
      
        
        
        buyButton.size = CGSize(width: view.frame.width/18, height: view.frame.width/18)
        buyButton.position = CGPoint(x: -view.frame.width*0.46, y: -view.frame.height*0.23)
        buyButton.zPosition = 51
        self.addChild(buyButton)
        
       
        
        restoreButton.size = CGSize(width: view.frame.width/18, height: view.frame.width/18)
        restoreButton.position = CGPoint(x: -view.frame.width*0.54, y: -view.frame.height*0.23)
        restoreButton.zPosition = 51
        self.addChild(restoreButton)
        
        
        
        portuguesBt.size = CGSize(width: view.frame.width/25*2, height: view.frame.width/35.5*2)
        portuguesBt.position = CGPoint(x: -view.frame.width*0.4, y: -view.frame.height*0.7)
        portuguesBt.zPosition = 53
        self.addChild(portuguesBt)
        
        englishBt.size = CGSize(width: view.frame.width/25*2, height: view.frame.width/35.5*2)
        englishBt.position = CGPoint(x: -view.frame.width*0.55, y: -view.frame.height*0.7)
        englishBt.zPosition = 53
        self.addChild(englishBt)
        
        
        
     
        
        
        
        addChild(continueNode)
        continueNode.addChild(continueLabel)
        //Boas vindas!! Só é executado na primeira abertura do aplicativo!!
        if (UserDefaults.standard.bool(forKey: "first")) == false {
        welcomebool = true
        UserDefaults.standard.set(true, forKey: "sound")
        UserDefaults.standard.synchronize()
        ipadWelcome.size = CGSize(width: view.frame.width*0.5, height: view.frame.height*0.9)
        ipadWelcome.position = CGPoint(x: view.frame.width*0.5, y: view.frame.height*0.5)
        ipadWelcome.zPosition = 52
        addChild(ipadWelcome)
        continueNode.size = CGSize(width: view.frame.width*0.15, height: view.frame.height*0.06)
        continueNode.position = CGPoint(x: view.frame.width*0.5, y: view.frame.height*0.12)
        continueNode.zPosition = 55
        continueLabel.text = "FINALIZAR"
        continueLabel.fontSize = 25
        continueLabel.zPosition = 55
        continueLabel.verticalAlignmentMode = .center
        continueLabel.horizontalAlignmentMode = .center
        portuguesBt.position = CGPoint(x: view.frame.width*0.5-portuguesBt.frame.width*0.8, y: view.frame.height*0.28-portuguesBt.frame.height*0.5)
        englishBt.position = CGPoint(x: view.frame.width*0.5+englishBt.frame.width*0.8, y: view.frame.height*0.28-englishBt.frame.height*0.5)
            

 
               if UIDevice.current.userInterfaceIdiom == .phone {
             
                  ipadWelcome.size = CGSize(width: view.frame.width*0.65, height: view.frame.height*0.88)
              
                ipadWelcome.texture = iphoneWelcomeTexture
                portuguesBt.position = CGPoint(x: view.frame.width*0.5-portuguesBt.frame.width*0.8, y: view.frame.height*0.33-portuguesBt.frame.height*0.5)
                englishBt.position = CGPoint(x: view.frame.width*0.5+englishBt.frame.width*0.8, y: view.frame.height*0.33-englishBt.frame.height*0.5)
                continueNode.setScale(1.2)
                continueLabel.fontSize = 15
                
                if view.bounds.width == 812.0{
                     ipadWelcome.size = CGSize(width: view.frame.width*0.55, height: view.frame.height*0.9)
                       unlockBanner.size = CGSize(width: view.frame.width*0.55, height: view.frame.height*0.9)
                }
            }
            
        }
       
        
        
        
        
     
        idiomaLabel.fontSize = 35
        idiomaLabel.alpha = 0
        idiomaLabel.position = CGPoint(x: view.frame.width*0.5, y: view.frame.height*0.7+portuguesBt.frame.height*0.5)
        idiomaLabel.zPosition = 51
        self.addChild(idiomaLabel)
        
        soonLabel.fontSize = 35
        soonLabel.position = CGPoint(x: 10, y: 30)
        soonLabel.zRotation = .pi/8
        soonLabel.zPosition = 10
       // pipa.addChild(soonLabel)
        
        soundLabel.fontSize = 35
        soundLabel.alpha = 0
        soundLabel.position = CGPoint(x: view.frame.width*0.5, y: view.frame.height*0.485-englishBt.frame.height*0.5)
        soundLabel.zPosition = 51
        self.addChild(soundLabel)
        
        unlockLabel.fontSize = 35
        unlockLabel.alpha = 0
        unlockLabel.position = CGPoint(x: view.frame.width*0.5, y: view.frame.height*0.335-englishBt.frame.height*0.5)
        unlockLabel.zPosition = 51
        self.addChild(unlockLabel)
        
       
 
        
     
        
        
            
        
        
      
        //Adiciona a música inicial de fundo
        
        soundOn = (UserDefaults.standard.bool(forKey: "sound"))
       
        if let musicURL = Bundle.main.url(forResource: "selectorSound", withExtension: "mp3") {
           backgroundMusic = SKAudioNode(url: musicURL)
            if soundOn == true {
                soundButton.texture = soundOnTexture
                self.addChild(backgroundMusic)
            }else if soundOn == false {
                soundButton.texture = soundOffTexture
            }
            
        }

     


        
      
       
        //PARTE COMUM A TODOS AS SCENES:
        settingsButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
        settingsButton.position = CGPoint(x: view.frame.width-view.frame.width/40, y: view.frame.height-view.frame.width/40)
        settingsButton.zPosition = 10
        settingsButton.alpha = 0.7
        self.addChild(settingsButton)
        
        
        
        settingsBack.size = CGSize(width: view.frame.width*0.5, height: view.frame.width*0.5)
        settingsBack.position = CGPoint(x: -view.frame.width/2, y: -view.frame.height/2)
        settingsBack.zPosition = 50
        self.addChild(settingsBack)
        
        
        background.size = CGSize(width: view.frame.width, height: view.frame.height)
        background.position = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        background.zPosition = 1
        addChild(background)

       
      
        let rotateSun = SKAction.repeatForever(SKAction.rotate(byAngle: -2, duration: 10))
        sun.size = CGSize(width: view.frame.width/6, height: view.frame.width/6)
        sun.position = CGPoint(x: view.frame.width*0.515 , y:view.frame.height*0.7 )
        sun.zPosition = 2
         sun.run(rotateSun)

       self.addChild(sun)
        
        
        
        
        dog.size = CGSize(width: view.frame.width/9, height: view.frame.width/4.5)
        dog.position = CGPoint(x: view.frame.width/10, y: view.frame.height*0.1+view.frame.width/16.4)
        dog.zPosition = 6
              self.addChild(dog)
        
        
        
        pipa.size = CGSize(width: view.frame.width/7*0.8, height: view.frame.width/3*0.8)
        pipa.position = CGPoint(x: view.frame.width-view.frame.width/10, y: view.frame.height*0.6)
        pipa.zPosition = 6
      //  pipa.alpha = 0.6
        let pipaAction = SKAction.repeatForever(SKAction.sequence([SKAction.rotate(byAngle: .pi/12, duration: 1),SKAction.rotate(toAngle:0, duration: 1)]))
        self.addChild(pipa)
      //  pipa.run(pipaAction)
        
       
        
        
  
        
        rabo.size = CGSize(width: view.frame.width/15, height: view.frame.width/30)
        rabo.position = CGPoint(x: dog.frame.maxX, y: view.frame.height*0.055+view.frame.width/16.4)
        let rotateRabo = SKAction.sequence([ SKAction.rotate(byAngle: .pi/5, duration: 0.12), SKAction.rotate(byAngle: -.pi/5, duration: 0.12)])
        let rotateRaboAnimation = SKAction.repeatForever(rotateRabo)
        rabo.zPosition = 3

        self.addChild(rabo)
        rabo.run(rotateRaboAnimation)
        
        let texturesPolvo = [polvoTexture1,polvoTexture2,polvoTexture3,polvoTexture4]
        let texturesPolvoRev = [polvoTexture4,polvoTexture3,polvoTexture2,polvoTexture1]
        let polvoAnimate = SKAction.sequence([SKAction.animate(with: texturesPolvo, timePerFrame: 0.14),SKAction.animate(with: texturesPolvoRev, timePerFrame: 0.14)])
        let repeatPolvoAnimation = SKAction.repeatForever(polvoAnimate)
        polvo.run(repeatPolvoAnimation)
        
        
        
       


        
        polvo.size = CGSize(width: view.frame.width/11, height: view.frame.width/11)
        polvo.position = CGPoint(x: view.frame.width/2+view.frame.width/7.5, y: view.frame.height/2.7)
        polvo.zPosition = 2
        addChild(polvo)
        
        
        book.size = CGSize(width: view.frame.width*0.085, height: view.frame.width*0.1)
        book.position = CGPoint(x: view.frame.width*0.4, y: view.frame.height*0.37)
        book.zPosition = 2
        book.alpha = 0.7
        let bookScale = SKAction.repeatForever(SKAction.sequence([SKAction.scale(to: 1.06, duration: 0.7),SKAction.scale(to: 1.0, duration: 0.7)]))
        addChild(book)
        book.run(bookScale)
        
        
        
        
        
        
 
       
        if UIDevice.current.userInterfaceIdiom == .phone {
    
            settingsButton.size = CGSize(width: view.frame.width/17, height: view.frame.width/17)
            settingsButton.position = CGPoint(x: view.frame.width-view.frame.width/34, y: view.frame.height-view.frame.width/34)
            
            padlock2.position = CGPoint(x: view.frame.width*0.5 , y:view.frame.height*0.7 )
            padlock1.position = CGPoint(x: view.frame.width*0.135, y: view.frame.height*0.08+view.frame.width/16.4)
            settingsBack.size = CGSize(width: view.frame.width*0.36, height: view.frame.height*0.8)
        
            pipa.position = CGPoint(x: view.frame.width-view.frame.width/8.5, y: view.frame.height*0.6)
             sun.position = CGPoint(x: view.frame.width*0.5, y:view.frame.height*0.7 )
           sun.setScale(0.84)
            polvo.setScale(0.89)
            pipa.setScale(0.91)
        idiomaLabel.fontSize = 18
            soundLabel.fontSize = 18
            unlockLabel.fontSize = 18
            

            
            polvo.position = CGPoint(x: view.frame.width/2+view.frame.width/8, y: view.frame.height/2.7)
            background.texture = backgroundIP
            book.removeAllActions()
             dog.position = CGPoint(x: view.frame.width*0.13, y: view.frame.height*0.10+view.frame.width/16.4)
              rabo.position = CGPoint(x: dog.frame.maxX, y: view.frame.height*0.05+view.frame.width/16.4)
            let bookScale = SKAction.repeatForever(SKAction.sequence([SKAction.scale(to: 0.94, duration: 0.74),SKAction.scale(to: 1, duration: 0.7)]))
            book.run(bookScale)
             book.position = CGPoint(x: view.frame.width*0.39, y: view.frame.height*0.385)
        
            
            //iPhone X
            if view.bounds.width == 812.0{
                settingsButton.texture = settingsX

                padlock2.position = CGPoint(x: view.frame.width*0.5 , y:view.frame.height*0.75 )
                padlock1.position = CGPoint(x: view.frame.width*0.135, y: view.frame.height*0.08+view.frame.width/16.4)

                  settingsBack.size = CGSize(width: view.frame.width*0.36, height: view.frame.height*0.8)
                 dog.position = CGPoint(x: view.frame.width*0.13, y: view.frame.height*0.13+view.frame.width/16.4)
                 rabo.position = CGPoint(x: dog.frame.maxX, y: view.frame.height*0.057+view.frame.width/16.4)
                  polvo.setScale(0.975)
                 sun.setScale(0.77)
                book.removeAllActions()
                 pipa.position = CGPoint(x: view.frame.width*0.86, y: view.frame.height*0.57)
                 polvo.position = CGPoint(x: view.frame.width*0.64, y: view.frame.height*0.40)
                sun.position = CGPoint(x: view.frame.width*0.5, y:view.frame.height*0.74 )
                settingsButton.size = CGSize(width: view.frame.width/20, height: view.frame.width/20)
                settingsButton.position = CGPoint(x: view.frame.width-settingsButton.frame.width*0.8, y: view.frame.height-settingsButton.frame.height*0.7)
                background.texture = backgroundX
                book.position = CGPoint(x: view.frame.width*0.35, y: view.frame.height*0.408)
                book.setScale(0.84)
                let bookScale = SKAction.repeatForever(SKAction.sequence([SKAction.scale(to: 0.96, duration: 0.76),SKAction.scale(to: 1.03, duration: 0.7)]))
                book.run(bookScale)
            }
            
         
            
            
           
        }
        
        
 
     
  setIdioma()
        scene?.scaleMode = .resizeFill
 
    }
    
 
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        
        
        

            if continueNode.contains(touch.location(in: self)){
                
                if  showWelcome == 3 {
                    buyButton.position = CGPoint(x: -(view?.frame.width)!*0.5, y: -(view?.frame.height)!*0.45)
                    buyButton.zPosition = 55
                    buyButton.setScale(1)
                      welcomebool = false
                     continueNode.position = CGPoint(x: -(view?.frame.width)!, y: -(view?.frame.height)!)
                      unlockBanner.position = CGPoint(x: -(view?.frame.width)!*1.5, y: -(view?.frame.height)!*0.23)
                }
                
                if showWelcome == 0{
                    welcomebool = false
                    continueNode.position = CGPoint(x: -(view?.frame.width)!, y: -(view?.frame.height)!)
                    ipadWelcome.removeFromParent()
                    UserDefaults.standard.set(true, forKey: "first")
                     UserDefaults.standard.synchronize()
                    englishBt.position = CGPoint(x: -(view?.frame.width)!*0.55, y: -(view?.frame.height)!*0.7)
                    portuguesBt.position = CGPoint(x: -(view?.frame.width)!*0.4, y: -(view?.frame.height)!*0.7)
                }
              
           
        }
        
         if soundButton.contains(touch.location(in: self)){
            if soundOn == true {
                //soundOff now
                soundOn = false
                  UserDefaults.standard.set(false, forKey: "sound")
                soundButton.texture = soundOffTexture
             UserDefaults.standard.synchronize()
                  backgroundMusic.removeFromParent()
              
                
                
            }else if soundOn == false{
                //Ativar
                soundOn = true
                  UserDefaults.standard.set(true, forKey: "sound")
                UserDefaults.standard.synchronize()
                soundButton.texture = soundOnTexture
              
                  backgroundMusic.removeFromParent()
                   self.addChild(backgroundMusic)
              
                
            }
            
            
        }
        
        
   if book.contains(touch.location(in: self)){


    if   settingsOnScreenSelector == false &&  welcomebool == false {
        if UserDefaults.standard.bool(forKey: "unlockedSave") == false{
        let scene = GameScene(fileNamed: "wordsTest")!
     scene.scaleMode = .resizeFill
        let transition = SKTransition.fade(withDuration: 1)
        self.view?.presentScene(scene, transition: transition)
        }else if UserDefaults.standard.bool(forKey: "unlockedSave") == true{
            let scene = GameScene(fileNamed: "words")!
            scene.scaleMode = .resizeFill
            let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
            
        }
    }
 
        }
        
        
        
        if sun.contains(touch.location(in: self)){

            
               if   settingsOnScreenSelector == false &&  welcomebool == false {
               if UserDefaults.standard.bool(forKey: "unlockedSave") == true {
            let scene = GameScene(fileNamed: "GameScene")!
            let transition = SKTransition.fade(withDuration: 1)
             scene.scaleMode = .resizeFill
            self.view?.presentScene(scene, transition: transition)
                   }else if UserDefaults.standard.bool(forKey: "unlockedSave") == false  {
                      organizeBanner()
                }
               }
 
        }
        
        if polvo.contains(touch.location(in: self)) {
                if   settingsOnScreenSelector == false &&  welcomebool == false {
            let scene = GameScene(fileNamed: "seaScene")!
             scene.scaleMode = .resizeFill
            let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
            }
        }
        
        if dog.contains(touch.location(in: self)){
   
            
            if settingsOnScreenSelector == false &&  welcomebool == false {
              if UserDefaults.standard.bool(forKey: "unlockedSave") == true {
            let scene = GameScene(fileNamed: "gardenScene")!
             scene.scaleMode = .resizeFill
            let transition = SKTransition.fade(withDuration: 1)
            self.view?.presentScene(scene, transition: transition)
                }else if UserDefaults.standard.bool(forKey: "unlockedSave") == false{
                    organizeBanner()
                }
           }
 
        }
        
     
         
        
        if buyButton.contains(touch.location(in: self)){
            if UserDefaults.standard.bool(forKey: "unlockedSave") == false {
                buyOr = "buy"
                ParentalGate()
            }else if UserDefaults.standard.bool(forKey: "unlockedSave") == true && welcomebool == true {
        
            }else{
                   showAlert()
            }
        }
        
        
        if restoreButton.contains(touch.location(in: self)){
           if  UserDefaults.standard.bool(forKey: "unlockedSave") == false {
              buyOr = "restore"
             ParentalGate()
           }else {
             showAlert()
            }
        }
     
        
        if portuguesBt.contains(touch.location(in: self)){
            UserDefaults.standard.set(portugues, forKey: "idioma")
            UserDefaults.standard.synchronize()
             setIdioma()
        }
        
        if englishBt.contains(touch.location(in: self)){
            UserDefaults.standard.set(ingles, forKey: "idioma")
            UserDefaults.standard.synchronize()
             setIdioma()
        }
        
        if settingsButton.contains(touch.location(in: self))  {
            
            if settingsOnScreenSelector == false &&  welcomebool == false {
                
                 buyButton.size = CGSize(width: (view?.frame.width)!/18, height: (view?.frame.width)!/18)
                if boughtOn == true {
                    addChild(buyButton)
                    boughtOn = false
                }
                settingsOnScreenSelector = true
                     idiomaLabel.alpha = 1
                 soundLabel.alpha = 1
                        unlockLabel.alpha = 1
                buyButton.position = CGPoint(x: (view?.frame.width)!*0.46, y: (view?.frame.height)!*0.23)
                restoreButton.position = CGPoint(x: (view?.frame.width)!*0.54, y: (view?.frame.height)!*0.23)
               soundButton.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.39)
                settingsBack.position = CGPoint(x: (view?.frame.width)!/2, y: (view?.frame.height)!/2)
                portuguesBt.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.66)
                  englishBt.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.64-portuguesBt.frame.height)
        
                  if UIDevice.current.userInterfaceIdiom == .phone {
                    //PRA IPHONE
                    
                 soundButton.setScale(1.1)
                    buyButton.setScale(1.1)
                    restoreButton.setScale(1.1)
                        idiomaLabel.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.75+portuguesBt.frame.height*0.5)
                        soundLabel.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.52-englishBt.frame.height*0.5)
                        unlockLabel.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.315-englishBt.frame.height*0.5)
                        portuguesBt.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.72)
                        englishBt.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.7-portuguesBt.frame.height)
                    buyButton.position = CGPoint(x: (view?.frame.width)!*0.46, y: (view?.frame.height)!*0.19)
                    restoreButton.position = CGPoint(x: (view?.frame.width)!*0.54, y: (view?.frame.height)!*0.19)
                    
                    
                  if view?.bounds.width == 812.0{
                    //IPHONE X
                    soundButton.setScale(0.95)
                    buyButton.setScale(0.95)
                    restoreButton.setScale(0.95)
                    buyButton.position = CGPoint(x: (view?.frame.width)!*0.46, y: (view?.frame.height)!*0.17)
                    restoreButton.position = CGPoint(x: (view?.frame.width)!*0.54, y: (view?.frame.height)!*0.17)
                       soundButton.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.36)
                englishBt.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.7-portuguesBt.frame.height)
                    soundLabel.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.68-portuguesBt.frame.height*2)
                    unlockLabel.position = CGPoint(x: (view?.frame.width)!*0.5, y: (view?.frame.height)!*0.305-englishBt.frame.height*0.5)
                    //abaxaqui
                }
                }
            }else if settingsOnScreenSelector == true{
                settingsOnScreenSelector = false
                     idiomaLabel.alpha = 0
                 soundLabel.alpha = 0
                        unlockLabel.alpha = 0
                 soundButton.position = CGPoint(x: -(view?.frame.width)!*0.5, y: -(view?.frame.height)!*0.39)
                settingsBack.position = CGPoint(x: -(view?.frame.width)!/2, y: -(view?.frame.height)!/2)
                englishBt.position = CGPoint(x: -(view?.frame.width)!*0.55, y: -(view?.frame.height)!*0.7)
                portuguesBt.position = CGPoint(x: -(view?.frame.width)!*0.4, y: -(view?.frame.height)!*0.7)
                buyButton.position = CGPoint(x: -(view?.frame.width)!*0.46, y: -(view?.frame.height)!*0.23)
                restoreButton.position = CGPoint(x: -(view?.frame.width)!*0.54, y: -(view?.frame.height)!*0.23)
            }
            
            //aabaxa
        }else if (scene?.contains(touch.location(in: self)))! &&  settingsOnScreenSelector == true && settingsBack.contains(touch.location(in: self))  {
            
        }else if (scene?.contains(touch.location(in: self)))! && unlockBanner.contains(touch.location(in: self)) ||  dog.contains(touch.location(in: self)) || sun.contains(touch.location(in: self)) {
            
    }else if (scene?.contains(touch.location(in: self)))! &&  settingsOnScreenSelector == true  || showWelcome == 3 {
     
       bannerRemove()
            
            settingsOnScreenSelector = false
             unlockLabel.alpha = 0
            soundLabel.alpha = 0
            idiomaLabel.alpha = 0
            settingsBack.position = CGPoint(x: -(view?.frame.width)!/2, y: -(view?.frame.height)!/2)
            englishBt.position = CGPoint(x: -(view?.frame.width)!*0.55, y: -(view?.frame.height)!*0.7)
            portuguesBt.position = CGPoint(x: -(view?.frame.width)!*0.4, y: -(view?.frame.height)!*0.7)
             soundButton.position = CGPoint(x: -(view?.frame.width)!*0.5, y: -(view?.frame.height)!*0.39)
            buyButton.position = CGPoint(x: -(view?.frame.width)!*0.46, y: -(view?.frame.height)!*0.23)
            restoreButton.position = CGPoint(x: -(view?.frame.width)!*0.54, y: -(view?.frame.height)!*0.23)
        }
        
        
        
        
     
        
    }
    
    
    
    
    
    
    
    
    
    
    
    

    override func update(_ currentTime: TimeInterval) {



}
    
    


}


