import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CollectionViewCell"
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Initialization
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.adjustsImageWhenAncestorFocused = true
        imageView.clipsToBounds = false
        label.alpha = 0.0
    }
    
    // MARK: UICollectionReusableView
    
    override func prepareForReuse() {
        super.prepareForReuse()
        label.alpha = 0.0
    }
    
    // MARK: UIFocusEnvironment
    
    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        coordinator.addCoordinatedAnimations({ [unowned self] in
            self.label.alpha = self.focused ? 1.0 : 0.0
            }, completion: nil)
    }
}