import Foundation
import Photos

class PhotoMetadataService {
    var photoLocations: [PhotoLocation] = []

    func fetchPhotoLocations() {
        let fetchOptions = PHFetchOptions()
        let allPhotos = PHAsset.fetchAssets(with: .image, options: fetchOptions)

        allPhotos.enumerateObjects { (asset, _, _) in
            if let location = asset.location, let creationDate = asset.creationDate {
                let photoLocation = PhotoLocation(latitude: location.coordinate.latitude,
                                                  longitude: location.coordinate.longitude,
                                                  dateTaken: creationDate)
                self.photoLocations.append(photoLocation)
            }
        }
    }
}
