//
//  MainViewController.swift
//  WEIBO
//
//  Created by Ferrymen on 3/12/19.
//  Copyright © 2019 Ferrymen. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tabBar.tintColor = UIColor.orange

        // Do any additional setup after loading the view.
        
        // 1､创建子控制器
        let childVc = HomeViewController()
        
        // 2､设置子控制器的属性
        childVc.title = "首页"
        childVc.tabBarItem.image = UIImage(named: "tabbar_home")
        childVc.tabBarItem.selectedImage = UIImage(named: "tabbar_home_highlighted")
        
        // 3､包装导航栏控制器
        let childNav = UINavigationController(rootViewController: childVc)
        
        // 4､添加控制器
        addChild(childNav)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
