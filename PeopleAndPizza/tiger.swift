//
//  tiger.swift
//  
//
//  Created by Nick Rigano on 9/28/16.
//
//

import Foundation


class Tiger {
    var name: String
    var isHungry: Bool
    
    init(name: String, isHungry: Bool) {
        self.name = name
        self.isHungry = true
        
    }
    func eat() {
        isHungry = false
    }
}

