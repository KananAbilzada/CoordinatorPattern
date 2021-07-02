//
//  Coordinator.swift
//  Cord
//
//  Created by Kanan Abilzada on 02.07.21.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
