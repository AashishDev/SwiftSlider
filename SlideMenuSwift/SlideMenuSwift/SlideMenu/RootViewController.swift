//
//  RootViewController.swift
//  SlideMenuSwift
//
//  Created by MOBILE MAC1 on 5/22/18.
//  Copyright © 2018 MOBILE MAC1. All rights reserved.
//

import UIKit

class RootViewController: REFrostedViewController {

  override func awakeFromNib() {
    contentViewController = storyboard?.instantiateViewController(withIdentifier: "contentController")
    menuViewController = storyboard?.instantiateViewController(withIdentifier: "menuController")
  }

}
