//
//  SceneDelegate.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/12.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .white
        window?.rootViewController = TabBarController()
        window?.tintColor = UIColor.mainTintColor
        window?.makeKeyAndVisible()
    }
}

