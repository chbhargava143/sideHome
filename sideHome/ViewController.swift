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
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapNextVc(_ sender : UIButton){
        let stBoard = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "blueVc") as! blueVc
        self.navigationController?.pushViewController(stBoard, animated: true)
    }
    @IBAction func didTapSideMenu(_ sender:Any){
        sideMenuController?.revealMenu()
    }
}

