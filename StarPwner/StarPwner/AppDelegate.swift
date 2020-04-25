//
//  AppDelegate.swift
//  StarPwner
//
//  Created by Thomas Kiely on 3/29/20.
//  Copyright © 2020 Thomas Kiely. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    let itemStore = ItemStore()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        // Access the ItemsViewController and set its item store
        let navController = window!.rootViewController as! UINavigationController
        let itemsController = navController.topViewController as! ItemsViewController
        itemsController.itemStore = itemStore
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
     let success = itemStore.saveChanges()
     if (success) {
    print("Saved all of the Items")
     } else {
    print("Could not save any of the Items")
     }
    }

    // MARK: UISceneSession Lifecycle




}

