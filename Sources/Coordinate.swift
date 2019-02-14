//
//  Coordinate.swift
//  TimeZones
//
//  Created by Tibor Bödecs on 2019. 02. 14..
//

import Foundation
#if canImport(CoreLocation)
import CoreLocation
#endif

public struct Coordinate: Codable {
    public let latitude: Double
    public let longitude: Double
    
    public init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}


#if canImport(CoreLocation)
public extension Coordinate {
    public var coreLocationCoordinate2D: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
    }
}
#endif
