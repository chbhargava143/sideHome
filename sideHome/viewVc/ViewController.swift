//
//  ViewController.swift
//  sideHome
//
//  Created by bhargava on 30/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import UIKit
import SideMenuSwift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
    }
    @IBAction func didTapNextVc(_ sender : UIButton){
performSegue(withIdentifier: "detailsVC", sender: self)

    }
   
    @IBAction func didTapSideMenu(_ sender:Any){
     
        UIView.animate(withDuration: 0.5,
                       delay: 0, usingSpringWithDamping: 1.0,
                       initialSpringVelocity: 1.0,
                       options: .curveEaseInOut, animations: {
                        self.sideMenuController?.revealMenu()
        }, completion: nil)
        }

       // Preferences.shared.enableTransitionAnimation = (sender as AnyObject).isOn
    }
    


