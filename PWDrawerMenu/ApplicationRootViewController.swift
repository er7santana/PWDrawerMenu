//
//  ApplicationRootViewController.swift
//  PWDrawerMenu
//
//  Created by Eliezer Rodrigo on 01/10/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import UIKit
import DrawerMenu

class ApplicationRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let menu = UIStoryboard(name: "Menu", bundle: nil).instantiateInitialViewController()!
        let main = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
        
        let drawer = DrawerMenu(center: main, left: menu)
        addChild(drawer)
        view.addSubview(drawer.view)
        drawer.didMove(toParent: self)
    }
}
