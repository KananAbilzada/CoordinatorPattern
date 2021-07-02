//
//  ViewController.swift
//  Cord
//
//  Created by Kanan Abilzada on 02.07.21.
//

import UIKit

class FirstController: UIViewController {
    var coordinator: FirstCoordinator?
    
    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("SecondController", for: .normal)
        button.backgroundColor = UIColor.systemOrange
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(startTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        NSLayoutConstraint.activate([
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.widthAnchor.constraint(equalToConstant: 150),
            startButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(startButton)
    }
}

extension FirstController {
    
    
    @objc
    private func startTapped (_ sender: UIButton) {
        coordinator?.showSecondController()
    }
    
    
}

