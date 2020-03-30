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
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Create an ItemStore
        let itemStore = ItemStore()
        // Access the ItemsViewController and set its item store
        let itemsController = window!.rootViewController as! ItemsViewController
        itemsController.itemStore = itemStore
        return true
    }

    // MARK: UISceneSession Lifecycle




}

