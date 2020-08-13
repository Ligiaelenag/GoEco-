//
//  RecyclingViewController.swift
//  GoEco!
//
//  Created by ligia Elena Guevara on 8/13/20.
//  Copyright © 2020 Ligia. All rights reserved.
//

import UIKit

class RecyclingViewController: UIViewController {

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
     
     

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
