//
//  TabBarController.swift
//  Translate
//
//  Created by kmjmarine on 2022/04/12.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //번역화면
        let translateViewContoller = TranslateViewController()
        translateViewContoller.tabBarItem = UITabBarItem(
            title: "번역",
            image: UIImage(systemName: "mic"),
            selectedImage: UIImage(systemName: "mic.fill")
        )
        
        //북마크화면
        let bookmarkViewController = UINavigationController(rootViewController: BookmarkListViewController())
        bookmarkViewController.tabBarItem = UITabBarItem(
            title: "즐겨찾기",
            image: UIImage(systemName: "star"),
            selectedImage: UIImage(systemName: "star.fill")
        )
        
        viewControllers = [translateViewContoller, bookmarkViewController]
    }
}

