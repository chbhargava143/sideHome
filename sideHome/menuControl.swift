//
//  menuControl.swift
//  sideHome
//
//  Created by bhargava on 30/01/21.
//  Copyright © 2021 bhargava. All rights reserved.
//

import UIKit
import SideMenuSwift
class Preferences {
    static let shared = Preferences()
    var enableTransitionAnimation = false
}
class menuControl: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var menuText = ["Home","Settings","Log out"]
    @IBOutlet weak var selectionMenuTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var tblView:UITableView!
    @IBOutlet weak var topView:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        SideMenuController.preferences.basic.menuWidth = 280
        SideMenuController.preferences.basic.statusBarBehavior = .hideOnMenu
        SideMenuController.preferences.basic.direction = .left
        SideMenuController.preferences.basic.enablePanGesture = true
        SideMenuController.preferences.basic.supportedOrientations = .portrait
        SideMenuController.preferences.basic.shouldRespectLanguageDirection = true
        
        topView.layer.cornerRadius = 20
        tblView.dataSource = self
        tblView.delegate = self
        tblView.separatorStyle = .none
        
        sideMenuController?.cache(viewControllerGenerator: {
            self.storyboard?.instantiateViewController(withIdentifier: "ContentNavigation")
        }, with: "0")
        sideMenuController?.cache(viewControllerGenerator: {
            self.storyboard?.instantiateViewController(withIdentifier: "secondVc")
        }, with: "1")

        sideMenuController?.cache(viewControllerGenerator: {
            self.storyboard?.instantiateViewController(withIdentifier: "thirdVc")
        }, with: "2")

        sideMenuController?.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "menuCell") as! menuCell
        cell.menuLBl.text = menuText[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//
//        let selecetMenu = self.menuText[indexPath.row]
//
//        if selecetMenu == "Home"{
//            let stBoard = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController" ) as! ViewController
//            self.navigationController?.pushViewController(stBoard, animated: true)
//            // sideMenuController?.hideMenu()
//        }else if selecetMenu == "Settings"{
//            let stBoard = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "greenVc") as! greenVc
//            self.navigationController?.pushViewController(stBoard, animated: true)
//           // sideMenuController?.hideMenu()
//        } else if selecetMenu == "Log out"{
//            let stBoard = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "blueVc") as! blueVc
//            self.navigationController?.pushViewController(stBoard, animated: true)
//            //sideMenuController?.hideMenu()
//        }
//        // Or This
         let row = indexPath.row
        sideMenuController?.setContentViewController(with: "\(row)", animated: Preferences.shared.enableTransitionAnimation)
        sideMenuController?.hideMenu()

        if let identifier = sideMenuController?.currentCacheIdentifier() {
            print("[Example] View Controller Cache Identifier: \(identifier)")
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)

        let sideMenuBasicConfiguration = SideMenuController.preferences.basic
        let showPlaceTableOnLeft = (sideMenuBasicConfiguration.position == .under) != (sideMenuBasicConfiguration.direction == .right)
        selectionMenuTrailingConstraint.constant = showPlaceTableOnLeft ? SideMenuController.preferences.basic.menuWidth - size.width : 0
        view.layoutIfNeeded()
    }
    

}
extension menuControl: SideMenuControllerDelegate {
    func sideMenuController(_ sideMenuController: SideMenuController,
                            animationControllerFrom fromVC: UIViewController,
                            to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return BasicTransitionAnimator(options: .transitionFlipFromLeft, duration: 0.6)
    }

    func sideMenuController(_ sideMenuController: SideMenuController, willShow viewController: UIViewController, animated: Bool) {
        print("[Example] View controller will show [\(viewController)]")
    }

    func sideMenuController(_ sideMenuController: SideMenuController, didShow viewController: UIViewController, animated: Bool) {
        print("[Example] View controller did show [\(viewController)]")
    }

    func sideMenuControllerWillHideMenu(_ sideMenuController: SideMenuController) {
        print("[Example] Menu will hide")
    }

    func sideMenuControllerDidHideMenu(_ sideMenuController: SideMenuController) {
        print("[Example] Menu did hide.")
    }

    func sideMenuControllerWillRevealMenu(_ sideMenuController: SideMenuController) {
        print("[Example] Menu will reveal.")
    }

    func sideMenuControllerDidRevealMenu(_ sideMenuController: SideMenuController) {
        print("[Example] Menu did reveal.")
    }
}
class NavigationController: UINavigationController {

    open override var childForStatusBarHidden: UIViewController? {
        return self.topViewController
    }

    open override var childForStatusBarStyle: UIViewController? {
        return self.topViewController
    }
}
