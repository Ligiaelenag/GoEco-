//
//  ViewController.swift
//  GoEco!
//
//  Created by ligia Elena Guevara on 8/13/20.
//  Copyright © 2020 Ligia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var alertButton: UIBarButtonItem!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenus()
      

        // Do any additional setup after loading the view.
    }
    

    func sideMenus() {
        
        if revealViewController() != nil {
            
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            
            alertButton.target = revealViewController()
            alertButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
    }
  
    func customizeNavBar() {
        
        navigationController?.navigationBar.tintColor = UIColor(red: 0.44, green: 0.69, blue: 0.43, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.44, green: 0.69, blue: 0.43, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        
        
        
    }

}
