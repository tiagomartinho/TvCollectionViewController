import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CollectionViewCell"
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
        
    // MARK: UIFocusEnvironment
    
    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        coordinator.addCoordinatedAnimations({ [unowned self] in
            self.label.alpha = self.focused ? 1.0 : 0.0
            }, completion: nil)
    }
}