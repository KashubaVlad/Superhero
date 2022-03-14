//
//  StartViewController.swift
//  Superhero
//
//  Created by Vlad on 18.02.2022.
//

import UIKit

class StartViewController: UIViewController, Storyboardeble {

    
    
    @IBOutlet private var maleButton: UIButton!
    @IBOutlet private var femaleButton: UIButton!
    @IBOutlet private var superherroTitle: UILabel!
    @IBOutlet private var chooseHerroTitle: UILabel!
    @IBOutlet private var supermanBackgroundImg: UIImageView!
    @IBOutlet private var supergirlBackgroundImg: UIImageView!
    
    
    @IBOutlet private var rect2: UIImageView!
    @IBOutlet private var rect3: UIImageView!
    
    
    weak var coordinator: MainCoordinator?
    private let viewModel = StartViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()
        configureLabels()
        configureImg()
        configureRect()
        
        // Do any additional setup after loading the view.
    }
    
    private func configureButtons() {
        maleButton.setTitle(viewModel.maleButtonTitle.uppercased(), for: .normal)
        
        femaleButton.setTitle(viewModel.femaleButtonTitle.uppercased(), for: .normal)
    }
    
    func configureLabels() {
        superherroTitle.text = viewModel.superheroTitle
        superherroTitle.font = UIFont(name: "Futura Bold", size: 32)
        
        
        chooseHerroTitle.text = viewModel.chooseHerroTitle
        chooseHerroTitle.font = UIFont(name: "SairaRoman-Regular", size: 16)
        
    }
        
    func configureImg() {
        supermanBackgroundImg.image = UIImage(named: viewModel.supermanImg)
        supergirlBackgroundImg.image = UIImage(named: viewModel.supergirlImg)
    }
    
    func configureRect() {
        rect2.image = UIImage(named: viewModel.rectang2)
        rect3.image = UIImage(named: viewModel.rectang3)
    }
   
    
    @IBAction func didButtonPressed(_ sender: UIButton) {
        viewModel.createProfile(with: sender.titleLabel?.text ?? "")
        coordinator?.start()
    }
    
    
}




 
