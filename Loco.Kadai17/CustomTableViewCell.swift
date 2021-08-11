import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet private weak var checkMarkImageView: UIImageView! {
        didSet {
            checkMarkImageView.tintColor = .orange
        }
    }

    @IBOutlet private weak var fruitsLabel: UILabel!
    static let cellIdentifier = "MyCell"

    func configure(item: CheckItem) {
        checkMarkImageView.image = item.isChecked ? UIImage(systemName: "checkmark") : nil
        fruitsLabel.text = item.name
    }
}
