//
//  NSManagedObject+Extras.swift
//  CoreStoreKit
//
//  Created by catch on 15/9/27.
//  Copyright © 2015年 Limon. All rights reserved.
//

import Foundation
import CoreData

public extension NSManagedObject {
    
    /**
    Convenience static function to grab name of an entity to make life easier when creating an NSEntityDescription instance especially on
    NSManagedObject subclass's during initialization.
    */
    public static var entityName: String {
        let fullClassName = NSStringFromClass(object_getClass(self))
        let nameComponents = fullClassName.characters.split { $0 == "." }
                                                     .map { String($0) }
        
        return nameComponents.last!
    }
    
    /**
        This convenience initializer makes it easier to init an NSManagedObject subclass without needing to
        provide boiler plate code to setup an entity description in every subclass init method; simply make a call to init on self in your subclass.
    
        :param: context The NSManagedObjectContext to init the subclassed NSManagedObject with.
    */
    public convenience init(context: NSManagedObjectContext) {
        let entityName = self.dynamicType.entityName
        let entity = NSEntityDescription.entityForName(entityName, inManagedObjectContext: context)!
        self.init(entity: entity, insertIntoManagedObjectContext: context)
    }
}
