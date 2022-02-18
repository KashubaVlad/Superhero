//
//  Coordinator.swift
//  Superhero
//
//  Created by Vlad on 18.02.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController {get set}
    
    func start()
}
