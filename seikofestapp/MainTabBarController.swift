//
//  MainTabBarController.swift
//  seikofestapp
//
//  Created by 田中千洋 on 2016/12/25.
//  Copyright © 2016年 田中 颯. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    
    var foodView: foodViewController!
    var timetableView: timetableViewController!
    var newView:newViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabback:UIColor = UIColor(red: 255/255, green: 158/255, blue: 35/255, alpha: 1.0)
        UITabBar.appearance().barTintColor =  tabback
        
        
        newView = newViewController()
        timetableView = timetableViewController()
        foodView = foodViewController()
        
        newView.tabBarItem = UITabBarItem(title: "display", image: UIImage(named: "display.png"), selectedImage: UIImage(named: "display.png"))
        foodView.tabBarItem = UITabBarItem(title: "food", image: UIImage(named: "food.png"), selectedImage: UIImage(named: "food.png"))
        timetableView.tabBarItem = UITabBarItem(title: "timetable", image: UIImage(named: "timetable.png"), selectedImage: UIImage(named: "timetable.png"))
        
        
        let myTabs = NSArray(objects: newView!, foodView!, timetableView!)
        self.setViewControllers(myTabs as? [UIViewController], animated: false)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
