//
//  SecondCoordinator.swift
//  Cord
//
//  Created by Kanan Abilzada on 02.07.21.
//

import UIKit

class SecondCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = SecondController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func dismiss() {
        navigationController.dismiss(animated: true, completion: nil)
    }

}
