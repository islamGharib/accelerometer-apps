//
//  ViewController.swift
//  xyz-machine
//
//  Created by Islam Gharib on 4/3/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        /*
        motionManager.startAccelerometerUpdates(to: .main) { (data: CMAccelerometerData?, error: Error?) in
            guard let accelerometerData = data else {return}
            print(accelerometerData)
        }
         */
        // or -> another way
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
    }
    
    func updateLabels(data: CMAccelerometerData?, error: Error?){
        guard let accelerometerData = data else {return}
        print(accelerometerData)
    }

   


}

