//
//  FirstCoordinator.swift
//  Cord
//
//  Created by Kanan Abilzada on 02.07.21.
//

import UIKit

class FirstCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = FirstController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
    func showSecondController(with title: String) {
        let secondCoordinator = SecondCoordinator(navigationController: navigationController, title: title)
        secondCoordinator.start()
    }

}
