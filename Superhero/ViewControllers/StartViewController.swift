//
//  StartViewController.swift
//  Superhero
//
//  Created by Vlad on 18.02.2022.
//

import UIKit

class StartViewController: UIViewController, Storyboardeble {

    
    weak var coordinator: MainCoordinator?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openSupermanVC(_ sender: Any) {
        coordinator?.openSupermanVC()
    }
    
    @IBAction func openSupervomanVC(_ sender: Any) {
        coordinator?.openSuperwomanVC()
    }
}
