//
//  MKCoordinateRegion+Extension.swift
//  Loot
//
//  Created by Rosnel Leyva-Cortés on 7/15/21.
//


import Foundation
import MapKit

extension MKCoordinateRegion {
    
    static var defaultRegion: MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D.init(latitude: 29.726819, longitude: -95.393692), latitudinalMeters: 100, longitudinalMeters: 100)
    }
    
}
