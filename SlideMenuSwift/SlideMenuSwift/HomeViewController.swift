//
//  HomeViewController.swift
//  SlideMenuSwift
//
//  Created by MOBILE MAC1 on 5/22/18.
//  Copyright © 2018 MOBILE MAC1. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
  
  // Slide menu Button
  @IBAction func slideMenuBtnTapped(_ sender: UIButton) {
    
     self.view.endEditing(true)
     self.frostedViewController.view.endEditing(true)
    //Open Slide Menu
    self.frostedViewController.presentMenuViewController()
  }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
