//
//  SecondViewController.swift
//  PWDrawerMenu
//
//  Created by Eliezer Rodrigo on 01/10/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import UIKit
import DrawerMenu

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu"),
                                                           style: .plain,
                                                            target: self,
                                                            action: #selector(leftOpen))
        navigationItem.leftBarButtonItem?.tintColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        drawer()?.panGestureType = .pan
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        drawer()?.panGestureType = .none
    }
    
    // MARK: Selector
    @objc func leftOpen() {
        drawer()?.open(to: .left)
    }
    
}
