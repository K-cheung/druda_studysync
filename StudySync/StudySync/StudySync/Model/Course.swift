/*
    Course represents a course.
    Contains information about:
    - unique identifier
    - name
    - description
    - whether it is marked as favourite or not
    - modules associated with course
*/

import Foundation
import SwiftUI
import CoreLocation

struct Course: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var isFavorite: Bool
    var modules: [Module]
    
    /**
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
     */
}
