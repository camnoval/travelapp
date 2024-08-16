import Foundation
import CoreLocation

struct PhotoLocation {
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    let dateTaken: Date

    init(latitude: CLLocationDegrees, longitude: CLLocationDegrees, dateTaken: Date) {
        self.latitude = latitude
        self.longitude = longitude
        self.dateTaken = dateTaken
    }
}
