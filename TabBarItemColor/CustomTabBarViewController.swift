//
//  CustomTabBarViewController.swift
//  TabBarItemColor
//
//  Created by Aaqib Hussain on 31/10/2015.
//  Copyright (c) 2015 Aaqib Hussain. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = UIColor.grayColor()
        for (var items = 0 ; items < tabBar.items!.count ; items++){
            var tabItemIndex = tabBar.items![items] as! UITabBarItem
            
            tabItemIndex.image = tabItemIndex.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            
        }
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor(red: 121/255, green: 43/255, blue: 157/255, alpha: 1)], forState:.Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.grayColor()], forState:UIControlState.Selected)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
