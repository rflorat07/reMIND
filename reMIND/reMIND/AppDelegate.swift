//
//  AppDelegate.swift
//  reMIND
//
//  Created by Roger Florat on 10/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        TaskManager.sharedInstance.load()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        TaskManager.sharedInstance.save()
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        TaskManager.sharedInstance.save()
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        TaskManager.sharedInstance.load()
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        TaskManager.sharedInstance.load()
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        TaskManager.sharedInstance.save()
    }
    
    
}

