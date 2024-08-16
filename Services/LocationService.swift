import Foundation
import CoreLocation

class LocationService: NSObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    var userLocations: [UserLocation] = []

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }

    func startTracking() {
        locationManager.startUpdatingLocation()
    }

    func stopTracking() {
        locationManager.stopUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        for location in locations {
            let userLocation = UserLocation(latitude: location.coordinate.latitude,
                                            longitude: location.coordinate.longitude,
                                            timestamp: location.timestamp)
            userLocations.append(userLocation)
        }
    }
}
