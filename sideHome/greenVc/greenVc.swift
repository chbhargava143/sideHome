//
//  greenVc.swift
//  sideHome
//
//  Created by bhargava on 30/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import UIKit

class greenVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func didTapSideMenu(_ sender:Any){
        sideMenuController?.revealMenu()
       // Preferences.shared.enableTransitionAnimation = (sender as AnyObject).isOn
    }
    
}
