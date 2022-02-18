//
//  Storyboarded.swift
//  Superhero
//
//  Created by Vlad on 18.02.2022.
//

import UIKit

protocol Storyboardeble {
    
    static func creareObject() -> Self
}

extension Storyboardeble where Self: UIViewController {
 
    static func creareObject() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: id, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self  
    }
}
