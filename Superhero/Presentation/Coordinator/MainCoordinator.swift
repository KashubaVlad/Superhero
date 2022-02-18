//
//  MainCoordinator.swift
//  Superhero
//
//  Created by Vlad on 18.02.2022.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let vc = StartViewController.creareObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    
}
