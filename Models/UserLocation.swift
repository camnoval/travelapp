import Foundation
import CoreLocation

struct UserLocation {
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    let timestamp: Date

    init(latitude: CLLocationDegrees, longitude: CLLocationDegrees, timestamp: Date = Date()) {
        self.latitude = latitude
        self.longitude = longitude
        self.timestamp = timestamp
    }
}
