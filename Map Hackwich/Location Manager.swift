//
//  Location Manager.swift
//  Map Hackwich
//
//  Created by Pamela VanLeirsburg on 6/15/26.
//

import Foundation
import CoreLocation

@Observable
class LocationManager: NSObject, CLLocationManagerDelegate {
    var locationManager = CLLocationManager()
    var geocoder = CLGeocoder()
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
}
