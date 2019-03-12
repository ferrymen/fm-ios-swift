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
        addChildViewController(childVc: HomeViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(childVc: MessageViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(childVc: DiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(childVc: ProfileViewController(), title: "我的", imageName: "tabbar_profile")

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func addChildViewController(childVc: UIViewController, title: String, imageName: String) -> Void {
        
        // 2､设置子控制器的属性
        childVc.title = title
        childVc.tabBarItem.image = UIImage(named: imageName)
        childVc.tabBarItem.selectedImage = UIImage(named: "\(imageName)_highlighted")
        
        // 3､包装导航栏控制器
        let childNav = UINavigationController(rootViewController: childVc)
        
        // 4､添加控制器
        addChild(childNav)
    }

}
