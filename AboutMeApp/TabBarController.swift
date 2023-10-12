//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Татьяна Дубова on 11.10.2023.
//

import UIKit

final class TabBarController: UITabBarController {

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        tabBar.items?.last?.title = user.login

    }
}
