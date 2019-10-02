//
//  MenuViewController.swift
//  PWDrawerMenu
//
//  Created by Eliezer Rodrigo on 01/10/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import UIKit
import DrawerMenu

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //MARK: - IBActions
    
    @IBAction func firstViewControllerTapped(_ sender: Any) {
        drawer()?.replace(center: UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!)
    }
    
    @IBAction func secondViewControllerTapped(_ sender: Any) {
        drawer()?.replace(center: UIStoryboard(name: "Second", bundle: nil).instantiateInitialViewController()!)
    }
    
}
