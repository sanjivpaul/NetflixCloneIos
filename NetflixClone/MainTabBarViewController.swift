//
//  ViewController.swift
//  NetflixClone
//
//  Created by V1 Macbook Air on 07/07/2025.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        
//        importing all the bottom tab screens
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
//        set image to tabs
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
//        set tabs title
        vc1.title="Home"
        vc2.title="Comming Soon"
        vc3.title="Search"
        vc4.title="Downloads"
        
        
        
//        display all the tab screens in array
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        
        
    }


}

