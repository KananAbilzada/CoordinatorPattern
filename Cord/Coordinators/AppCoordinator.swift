//
//  AppCoordinator.swift
//  Cord
//
//  Created by Kanan Abilzada on 02.07.21.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    let window: UIWindow
    
    init(window: UIWindow, navigationController: UINavigationController) {
        self.window               = window
        self.navigationController = navigationController
    }
    
    func start() {
        let navigationController  = UINavigationController()
        window.rootViewController =  navigationController
        window.makeKeyAndVisible()

        startFirstVC(navigationController)
    }
    
    fileprivate func startFirstVC(_ navigationController: UINavigationController) {
        /// push to your first viewController
        let firstCoordinator = FirstCoordinator(navigationController: navigationController)
        firstCoordinator.start()
    }
}


