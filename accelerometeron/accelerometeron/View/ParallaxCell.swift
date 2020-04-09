//
//  ParallaxCell.swift
//  accelerometeron
//
//  Created by Islam Gharib on 4/9/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configuredCell(withImage image: UIImage, andDescription desc: String){
        itemImageView.image = image
        descriptionLabel.text = desc
    }
    
    func setupParallax(){
        
    }

}
