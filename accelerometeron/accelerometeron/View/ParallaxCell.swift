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
        setupParallax()
    }
    
    func configuredCell(withImage image: UIImage, andDescription desc: String){
        itemImageView.image = image
        descriptionLabel.text = desc
    }
    
    // applying motion affect
    func setupParallax(){
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        // horizontal motion
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        // vertical motion
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.maximumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        // grouping both x and y motions
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion,yMotion]
        
        // applying motion effect to the itemImageView
        itemImageView.addMotionEffect(motionEffectGroup)
        
    }

}
