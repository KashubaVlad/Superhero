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
        let vc = StartViewController.creareObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    /// Кнопка Супермен
    func openSupermanVC() {
        let vc = SupermanViewController.creareObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    /// Кнопка Супервуман
    func openSuperwomanVC() {
        let vc = SuperwomanViewController.creareObject()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
}
