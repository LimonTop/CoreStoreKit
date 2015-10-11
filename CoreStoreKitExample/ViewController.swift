//
//  ViewController.swift
//  CoreStoreKitExample
//
//  Created by catch on 15/10/11.
//  Copyright © 2015年 Limon. All rights reserved.
//

import UIKit
import CoreStoreKit

let modelName = "CoreStoreKitExample"
let model = CoreDataModel(name: modelName)
let coreDataStack = CoreDataStack(model: model)

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let user = User(context: coreDataStack.context)
        user.name = "Limon"
        user.age = 18

        saveContext(coreDataStack.context)
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        let request = FetchRequest<User>(context: coreDataStack.context)
        request.fetchLimit = 30
        request.sortDescriptors = [NSSortDescriptor(key: "age", ascending: true)]

        let results = try! fetch(request: request, inContext: coreDataStack.context)

        for result in results {
            print("Name: \(result.name) Age: \(result.age)")
        }
    }
}

