//
//  SecondCoordinator.swift
//  Cord
//
//  Created by Kanan Abilzada on 02.07.21.
//

import UIKit

class SecondCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var navigationTitle: String
    
    init(navigationController: UINavigationController, title: String) {
        self.navigationController = navigationController
        self.navigationTitle      = title
    }
    
    func start() {
        let vc = SecondController()
        vc.coordinator          = self
        vc.navigationItem.title = navigationTitle
        navigationController.pushViewController(vc, animated: true)
    }
    
    func dismiss() {
        navigationController.popViewController(animated: true)
    }

}
