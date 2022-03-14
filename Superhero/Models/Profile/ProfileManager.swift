//
//  ProfileManager.swift
//  Superhero
//
//  Created by Vlad on 21.02.2022.
//

import UIKit
import CoreData

class ProfileManager {
    
    static let sharedInstance = ProfileManager()
    
    
    //  mainContext
    lazy var mainContext: NSManagedObjectContext = {
        return self.storeConteiner.viewContext
    }()
    
    
    // storeContainer
    private lazy var storeConteiner: NSPersistentContainer = {
        let conteiner = NSPersistentContainer(name: "Profile")
        conteiner.loadPersistentStores {storeDescription, error in
            if let error = error as NSError? {
                print ("Error \(error), \(error.userInfo)")
            }
        }
        return conteiner
    }()
    
    
    var userProfile: Profile?
    
    
    func createDefaultProfile (with sex: String) {
        
        let entity = NSEntityDescription.entity (forEntityName: "Profile", in: mainContext)
        userProfile = Profile (entity: entity!, insertInto: mainContext)
        
        userProfile?.sex = sex
        
        saveProfile()
    }
    
    func saveProfile() {
        do {
            try mainContext.save()
        } catch _ as NSError {
            print("Error context save")
        }
    }

    
// strore
    
   
    
    // retriveProfile
    
    func retriveProfile() {
        let retriveRequest: NSFetchRequest<Profile> = Profile.fetchRequest()
        
        do {
            let result = try mainContext.fetch(retriveRequest)
            
            if result.count > 0 {
                userProfile = result.first
            } else {
                userProfile = nil
            }
        } catch let error as NSError  {
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    }
}
