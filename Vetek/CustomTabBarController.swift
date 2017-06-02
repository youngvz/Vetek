//
//  CustomTabBarController.swift
//  UIKitBasics
//
//  Created by Viraj Shah on 6/2/17.
//  Copyright © 2017 Vetek Consulting. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeFeedController = HomeFeedViewController()
        let navHomeController = UINavigationController(rootViewController: homeFeedController)
        navHomeController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "home_unselected"), selectedImage: #imageLiteral(resourceName: "home_selected") )
        
        let messagesController = MessagesViewController()
        let navMessagesController = UINavigationController(rootViewController: messagesController)
        navMessagesController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "chat_unselected"), selectedImage: #imageLiteral(resourceName: "chat_selected") )

        let profileController = ProfileViewController()
        let navProfileController = UINavigationController(rootViewController: profileController)
        navProfileController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "profile_unselected"), selectedImage: #imageLiteral(resourceName: "profile_selected"))

        
        viewControllers = [ navHomeController, navMessagesController, navProfileController ]
        
        setupTabBar()
    }
    
    fileprivate func setupTabBar(){
        let tabBarItems = tabBar.items! as [UITabBarItem]
        for tabBarItem in tabBarItems{
            if let image = tabBarItem.image {
                tabBarItem.image = image.withRenderingMode(.alwaysOriginal)
                tabBarItem.imageInsets = UIEdgeInsetsMake(6,0,-6,0)
            }
        }
        
        UITabBar.appearance().tintColor = .systemColor("Blue")
        UITabBar.appearance().barTintColor = .white
    }

}
