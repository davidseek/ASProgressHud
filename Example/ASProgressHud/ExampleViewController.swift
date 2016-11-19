//
//  ExampleViewController.swift
//  ASProgressHud
//
//  Created by Andrea on 02/17/2016.
//  Copyright (c) 2016 Andrea. All rights reserved.
//

import UIKit
import ASProgressHud

class ExampleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func showWhiteHUD() {
        
        _ = ASProgressHud.showHUDAddedTo(view: self.view, animated: true, type: .Default)
        print("Hud SHOW")
        
        self.hideAfterDelay()
    }
    
    @IBAction func showGoogleHUD() {
        
        _ = ASProgressHud.showHUDAddedTo(view: self.view, animated: true, type: .Google)
        print("Hud SHOW")
        
        self.hideAfterDelay()
    }
    
    @IBAction func showFlagHUD() {
        
        _ = ASProgressHud.showHUDAddedTo(view: self.view, animated: true, type: .Flag)
        print("Hud SHOW")
        
        self.hideAfterDelay()
    }
    
    @IBAction func showCustomHUD() {
        
        let property = HudProperty(prefixName: "coffee", frameNumber: 13, size: 70, backgroundColor: UIColor.yellow)
        _ = ASProgressHud.showCustomHUDAddedTo(view: self.view, animated: true, property: property)
        print("Hud SHOW")
        
        self.hideAfterDelay()
    }
    
    func hideAfterDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            _ = ASProgressHud.hideHUDForView(view: self.view, animated: true)
            print("Hud HIDE")
        }
    }
    
}

