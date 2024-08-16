import UIKit

class SettingsViewController: UIViewController {
    @IBAction func deleteDataButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Delete Data", message: "Are you sure you want to delete all your data?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { _ in
            self.deleteUserData()
        }))
        present(alert, animated: true)
    }

    func deleteUserData() {
        // Implement data deletion logic
    }
}
