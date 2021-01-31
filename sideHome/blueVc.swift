//
//  blueVc.swift
//  sideHome
//
//  Created by bhargava on 30/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import UIKit

class blueVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func didTapBackVc(_ sender : Any){
      
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func didTapSideMenu(_ sender:Any){
        sideMenuController?.revealMenu()
    }
    

}
