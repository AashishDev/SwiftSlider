//
//  MenuViewController.swift
//  SlideMenuSwift
//
//  Created by MOBILE MAC1 on 5/22/18.
//  Copyright © 2018 MOBILE MAC1. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
  
  
  var menuItems = [String]()
  @IBOutlet var menuTableview: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    menuItems.append("Home")
    menuItems.append("Data")
    menuItems.append("Logout")
    
    menuTableview.rowHeight = 60
    menuTableview.tableFooterView = UIView(frame: .zero)
    menuTableview.reloadData()
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return menuItems.count;
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
    let titleLabel = cell.contentView.viewWithTag(100) as! UILabel
    titleLabel.text = menuItems[indexPath.row]
    return cell;
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    
    tableView.deselectRow(at: indexPath, animated: true)
    let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "contentController") as! NavigationController
    
    let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
    navigationController.viewControllers = [homeViewController]
    self.frostedViewController.contentViewController = navigationController
    self.frostedViewController.hideMenuViewController()
  }
  
  
  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
