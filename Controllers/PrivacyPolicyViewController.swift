import UIKit
import WebKit

class PrivacyPolicyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = WKWebView(frame: self.view.bounds)
        let url = URL(string: "https://www.yourwebsite.com/privacy-policy")! //change this cam
        let request = URLRequest(url: url)
        webView.load(request)
        self.view.addSubview(webView)
    }
}
