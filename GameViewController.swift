//
//  GameViewController.swift
//  Learn the Alphabet
//
//  Created by Gabriel Rocco on 03/05/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.bool(forKey: "unlockedSave") == false {
      IAPService.shared.getProducts()
        }
  
        

        
       
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GKScene(fileNamed: "openScene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! openScene? {
                
                // Copy gameplay related content over to the scene

                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .resizeFill
           
                // Present the scene
                if let view = self.view as! SKView? {
                    
                      view.presentScene(sceneNode)
                    view.ignoresSiblingOrder = true

                }
            }
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func prefersHomeIndicatorAutoHidden() -> Bool {
        return true
    }
    
    
}
