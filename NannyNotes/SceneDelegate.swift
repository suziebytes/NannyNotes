//
//  SceneDelegate.swift
//  NannyNotes
//
//  Created by Suzie on 4/13/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard
            let windowScene = (scene as? UIWindowScene)
        else {
            return
        }
        // One
        self.window = UIWindow(windowScene: windowScene)
        // Two
        self.window?.rootViewController = ViewController()
        // Three
        self.window?.makeKeyAndVisible()
        
        let tabBarVC = UITabBarController()
        var appearance = UITabBarAppearance()
        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            tabBarAppearance.backgroundColor = UIColor.white
            UITabBar.appearance().standardAppearance = tabBarAppearance

            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
        
        UITabBar.appearance().tintColor = UIColor(red: 122/255, green: 90/255, blue: 212/255, alpha: 1)
        
        if #available(iOS 16.0, *) {
            
        } else {
            // Fallback on earlier versions
        }
        let VC = ViewController()
        VC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        let dailyVC = DailyReportVC()
        dailyVC.tabBarItem = UITabBarItem(title: "Reports", image: UIImage(systemName: "slider.horizontal.3"), tag: 1)
        
        tabBarVC.viewControllers = [VC, dailyVC]
    
        window?.rootViewController = tabBarVC
    }
}
