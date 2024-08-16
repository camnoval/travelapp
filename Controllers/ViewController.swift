import UIKit

class ViewController: UIViewController {
    let locationManager = LocationManager()
    let photoManager = PhotoManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Request location permissions
        locationManager.requestLocationPermissions()
        // Request photo library access
        photoManager.requestPhotoLibraryAccess { status in
            // Handle the result
        }
    }

    func showPermissionExplanation() {
        let alert = UIAlertController(title: "Permission Required", message: "We need access to your location and photos to provide the best experience. This data will be used to create a personalized map of your locations.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.locationManager.requestLocationPermissions()
            self.photoManager.requestPhotoLibraryAccess { status in
                // Handle the result
            }
        }))
        present(alert, animated: true)
    }
}
