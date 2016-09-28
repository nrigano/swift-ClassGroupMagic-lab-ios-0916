//
//  PizzaDeliveryService.swift
//  
//
//  Created by Nick Rigano on 9/28/16.
//
//

import Foundation


class PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int

    
    init(location: Coordinate, pizzasAvailable: Int) {
        self.location = location
        self.pizzasAvailable = 10
    }

    func isInRange(_ destination: Coordinate) -> Bool {
        if destination.distanceTo(self.location) <= 5000.0 {
            return true
        } else {
            return false
        }
    }
    
    func deliverPizzaTo(_ destination: Coordinate) -> Bool {
        if isInRange(destination) == true && pizzasAvailable > 0 {
            pizzasAvailable -= 1
            return true
        } else {
            return false
        }
    }


}
