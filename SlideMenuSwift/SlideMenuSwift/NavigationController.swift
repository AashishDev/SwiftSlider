//
//  NavigationController.swift
//  SlideMenuSwift
//
//  Created by MOBILE MAC1 on 5/22/18.
//  Copyright © 2018 MOBILE MAC1. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
      self.view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action:#selector(self.panGestureRecognized(_:))))
    }
  

  @objc func panGestureRecognized(_ sender: UIPanGestureRecognizer?) {
    // Dismiss keyboard (optional)
    //
    view.endEditing(true)
    frostedViewController.view.endEditing(true)
    // Present the view controller
    //
    frostedViewController.panGestureRecognized(sender)
  }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
