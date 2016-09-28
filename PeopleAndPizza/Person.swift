//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Nick Rigano on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let firstName: String
    let lastName: String
    var home: Coordinate
    var isHungry: Bool
    
    init(firstName: String, lastName: String, home: Coordinate, isHungry: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
        self.isHungry = true
    }
    
    func eatPizzaFrom(_ service: PizzaDeliveryService) -> Bool {
        if isHungry == true && self.home.distanceTo(service.location) < 5000 {
            isHungry = false
            return true
        } else {
            return false
        }
    }
    
}
