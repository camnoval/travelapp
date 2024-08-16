import GoogleMobileAds

class AdManager: NSObject, GADFullScreenContentDelegate {
    var interstitial: GADInterstitialAd?
    var rewardedAd: GADRewardedAd?

    func loadInterstitialAd(withAdUnitID adUnitID: String) {
        let request = GADRequest()
        GADInterstitialAd.load(withAdUnitID: adUnitID, request: request) { ad, error in
            if let error = error {
                print("Failed to load interstitial ad: \(error.localizedDescription)")
                return
            }
            self.interstitial = ad
            self.interstitial?.fullScreenContentDelegate = self
        }
    }

    func showInterstitialAd(from viewController: UIViewController) {
        if let interstitial = interstitial {
            interstitial.present(fromRootViewController: viewController)
        } else {
            print("Interstitial ad is not ready")
        }
    }

    func loadRewardedAd(withAdUnitID adUnitID: String) {
        let request = GADRequest()
        GADRewardedAd.load(withAdUnitID: adUnitID, request: request) { ad, error in
            if let error = error {
                print("Failed to load rewarded ad: \(error.localizedDescription)")
                return
            }
            self.rewardedAd = ad
            self.rewardedAd?.fullScreenContentDelegate = self
        }
    }

    func showRewardedAd(from viewController: UIViewController) {
        if let rewardedAd = rewardedAd {
            rewardedAd.present(fromRootViewController: viewController) {
                // Handle the reward here
            }
        } else {
            print("Rewarded ad is not ready")
        }
    }

    func ad(_ ad: GADFullScreenPresentingAd, didFailToPresentFullScreenContentWithError error: Error) {
        print("Failed to present ad: \(error.localizedDescription)")
    }
}
