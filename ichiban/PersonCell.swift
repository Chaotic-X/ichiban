//
// 

import UIKit

class PersonCell: UICollectionViewCell {

   
  
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: PersonModel) {
        image.image = model.image
        name.text = model.name
    }
}
