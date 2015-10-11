//
//  User+CoreDataProperties.swift
//  CoreStoreKitExample
//
//  Created by catch on 15/10/11.
//  Copyright © 2015年 Limon. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension User {

    @NSManaged var name: String?
    @NSManaged var age: NSNumber?

}
