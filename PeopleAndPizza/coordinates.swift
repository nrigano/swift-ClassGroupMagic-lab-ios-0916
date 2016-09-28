//
//  coordinates.swift
//  
//
//  Created by Nick Rigano on 9/28/16.
//
//

import Foundation


class Coordinate {
    var latitude: Double
    var longitude: Double
    var isInNorthernHemisphere: Bool {
        if latitude > 0 {
            return true
        } else {
            return false
        }
    }
    var isInSouthernHemisphere: Bool {
        if latitude < 0 {
            return true
        } else {
            return false
        }
    }
    var isInWesternHemisphere: Bool {
        if longitude > 0 {
            return true
        } else {
            return false
        }
    }
    var isInEasternHemisphere: Bool {
        if latitude < 0 {
            return true
        } else {
            return false
        }
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = 111.1
        self.longitude = 75.6
    }
    
    func distanceTo(_ coordinate: Coordinate) -> Double {
        return acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude.radians-coordinate.longitude.radians)) * 6371000 / 1000
    }



}


extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
