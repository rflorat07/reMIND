//
//  TaskManager.swift
//  reMIND
//
//  Created by Roger Florat on 10/01/18.
//  Copyright © 2018 Roger Florat. All rights reserved.
//

import Foundation

class TaskManager {
    
    static let sharedInstance = TaskManager()
    
    var task : [[String: String]] = [[String: String]]()
    
    func save() {
        UserDefaults.standard.set(task, forKey: "tasks")
    }
    
    func load() {
        if let array = UserDefaults.standard.array(forKey: "tasks") as? [[String: String]] {
            task = array
        }
    }
}
