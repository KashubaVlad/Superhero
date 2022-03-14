//
//  StartVievModel.swift
//  Superhero
//
//  Created by Vlad on 22.02.2022.
//

import Foundation
import UIKit

struct StartViewModel {
    
    let superheroTitle =  "SUPERHERO"
    let chooseHerroTitle = "выбeри героя"
    
    let maleButtonTitle = "superman"
    let femaleButtonTitle = "supergirl"
    
    let supermanImg = "supermanImg"
    let supergirlImg = "supergirlImg"
    
    let rectang2 = "Rectangle 22"
    let rectang3 = "Rectangle 33"
    
    func createProfile(with sex: String) {
      
        ProfileManager.sharedInstance.createDefaultProfile(with: sex)
        
    }
}

