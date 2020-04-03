//
//  IAPHandler.swift
//  Learn the World
//
//  Created by Gabriel Rocco on 07/06/2018.
//  Copyright © 2018 Graeff. All rights reserved.
//


import UIKit
import Foundation
import StoreKit
import SpriteKit



class IAPService: NSObject {
    
    var sceneSelector = scenesSelector()
    private override init() {}
    static let shared = IAPService()
    
    var products = [SKProduct]()
    let paymentQueue = SKPaymentQueue.default()
    
    func getProducts() {
        let products: Set = [IAPProduct.nonconsumable.rawValue]
        let request = SKProductsRequest(productIdentifiers: products)
        request.delegate = self
        request.start()
        paymentQueue.add(self)
    }
    
      func canMakePurchases() -> Bool {  return SKPaymentQueue.canMakePayments()  }
    
   
    
    
    func purchase(product: IAPProduct) {
        
  if self.canMakePurchases() {
        guard let productToPurchase = products.filter({ $0.productIdentifier == product.rawValue }).first else { return }
        let payment = SKPayment(product: productToPurchase)
        paymentQueue.add(payment)
        }else{
    if UserDefaults.standard.string(forKey: "idioma") == "portugues" {
    myAlert = UIAlertController(title: "ERRO", message: "A compra dentro de aplicativos foi desabilitada. Para prosseguir por favor desabilite a restrição nos ajustes.", preferredStyle: .alert)
    }else if UserDefaults.standard.string(forKey: "idioma") == "ingles" {
         myAlert = UIAlertController(title: "FAILED", message: "In App Purchase is disabled, to continue please enable it on Settings.", preferredStyle: .alert)
    }
    myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    UIApplication.shared.keyWindow?.rootViewController?.present(myAlert, animated: true, completion: nil)
        }
    }
    
    func restorePurchases() {
        if self.canMakePurchases() {
           paymentQueue.restoreCompletedTransactions()
        }else{
            if UserDefaults.standard.string(forKey: "idioma") == "portugues" {
                myAlert = UIAlertController(title: "ERRO", message: "A compra dentro de aplicativos foi desabilitada. Para prosseguir por favor desabilite a restrição nos ajustes.", preferredStyle: .alert)
            }else if UserDefaults.standard.string(forKey: "idioma") == "ingles" {
                myAlert = UIAlertController(title: "FAILED", message: "In App Purchase is disabled, to continue please enable it on Settings.", preferredStyle: .alert)
            }
            myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            UIApplication.shared.keyWindow?.rootViewController?.present(myAlert, animated: true, completion: nil)
        }
       
    }
    
}

extension IAPService: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        products = response.products
        for product in response.products {
            print(product.localizedTitle)
        }
    }
}

extension IAPService: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            print(transaction.transactionState.status(), transaction.payment.productIdentifier)
            if transaction.transactionState == .purchased {
                queue.finishTransaction(transaction)
                scenesSelector().validate()
                if welcomebool == true{
                     scenesSelector().bannerBuyRemove()
                }
                if UserDefaults.standard.string(forKey: "idioma") == "portugues" {
                    myAlert = UIAlertController(title: "SUCESSO", message: "O aplicativo foi liberado com sucesso! Obrigado pelo suporte!", preferredStyle: .alert)
                }else if UserDefaults.standard.string(forKey: "idioma") == "ingles" {
                     myAlert = UIAlertController(title: "SUCESS", message: "The app has been successfully unlocked! Thank you for the support.", preferredStyle: .alert)
                }
                myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                UIApplication.shared.keyWindow?.rootViewController?.present(myAlert, animated: true, completion: nil)
            }
            
            if transaction.transactionState == .restored {
                   queue.finishTransaction(transaction)
                scenesSelector().validateRestore()
                if welcomebool == true{
                    scenesSelector().bannerBuyRemove()
                }
 
                if UserDefaults.standard.string(forKey: "idioma") == "portugues" {
                    myAlert = UIAlertController(title: "SUCESSO", message: "O aplicativo foi restaurado com sucesso!", preferredStyle: .alert)
                }else if UserDefaults.standard.string(forKey: "idioma") == "ingles" {
                     myAlert = UIAlertController(title: "SUCESS", message: "The app has been successfully restored!", preferredStyle: .alert)
                }
                myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                UIApplication.shared.keyWindow?.rootViewController?.present(myAlert, animated: true, completion: nil)
               
            }
            
            if transaction.transactionState == .failed {
                if UserDefaults.standard.string(forKey: "idioma") == "portugues" {
                       myAlert = UIAlertController(title: "ERRO", message: "Ocorreu um erro durante o processo, por favor verifique sua conexão com a internet ou tente novamente mais tarde.", preferredStyle: .alert)
                }else if UserDefaults.standard.string(forKey: "idioma") == "ingles" {
                    myAlert = UIAlertController(title: "FAILED", message: "An error occurred during the process, please check your internet connection or try again later.", preferredStyle: .alert)
                }
                myAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                UIApplication.shared.keyWindow?.rootViewController?.present(myAlert, animated: true, completion: nil)
            
              
                
            }
            switch transaction.transactionState {
            case .purchasing: break
            default: queue.finishTransaction(transaction)
                
                
            }
            
           
        }
    }
}

extension SKPaymentTransactionState {
    func status() -> String {
        switch self {
        case .deferred: return "deferred"
        case .failed: return "failed"
        case .purchased: return "purchased"
        case .purchasing: return "purchasing"
        case .restored: return "restored"
        }
    }
}
