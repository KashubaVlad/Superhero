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
    
    /// Запуск першого екрану
    func start() {
        ProfileManager.sharedInstance.retriveProfile()
        
        if ProfileManager.sharedInstance.userProfile != nil {
             homeVC()
        } else {
            let vc = StartViewController.creareObject()
            vc.coordinator = self
            navigationController.pushViewController(vc, animated: false)
        }
    }
    /// Кнопка Супермен
    func homeVC() {
        let vc = HomeViewController.creareObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }

    func back() {
            navigationController.popViewController(animated: true)
    }
}
