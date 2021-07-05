//
//  SecondController.swift
//  Cord
//
//  Created by Kanan Abilzada on 02.07.21.
//

import UIKit

class SecondController: UIViewController {
    var coordinator: SecondCoordinator?

    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Return to FirstController", for: .normal)
        button.backgroundColor = UIColor.red
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
            startButton.widthAnchor.constraint(equalToConstant: 200),
            startButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(startButton)
    }
}

extension SecondController {
    
    @objc
    private func startTapped (_ sender: UIButton) {
        coordinator?.dismiss()
    }
    
}
