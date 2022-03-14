//
//  SupermanViewController.swift
//  Superhero
//
//  Created by Vlad on 20.02.2022.
//

import UIKit


class HomeViewController: UIViewController, Storyboardeble {
    
    
    
    @IBOutlet private var backgroundHome: UIImageView!
    @IBOutlet private var sexTitleHome: UILabel!
    
    
    
    
    weak var coordinator: MainCoordinator?
    private let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackground()

    }

    let profile = ProfileManager.sharedInstance.userProfile

    
    
    
    func configureBackground() {
        let sex = profile?.sex
        if sex == "superman" {
            backgroundHome.image = viewModel.manBackgroundImg
        } else if sex == "supergirl" {
            backgroundHome.image = viewModel.girlBackrroundImg
        }
    }
        
        

}
