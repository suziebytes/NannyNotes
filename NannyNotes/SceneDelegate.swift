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
    }
}
