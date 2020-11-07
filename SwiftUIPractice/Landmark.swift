//
//  Landmark.swift
//  SwiftUIPractice
//
//  Created by thanh tien on 11/7/20.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var imageName: String
    var coordinates: Coordinates
    var state: String
    var park: String
    var category: String
    var favorite = false

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image: Image {
        Image("jisoo")
    }
}


struct Coordinates: Codable, Hashable {
    var latitude: Double
    var longitude: Double
}
