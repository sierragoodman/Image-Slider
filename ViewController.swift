//
//  ViewController.swift
//  Slider
//
//  Created by Sierra Goodman on 11/8/20.
//  Copyright © 2020 Sierra Goodman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let auburnImage = #imageLiteral(resourceName: "Auburn University logo.jpg")
    let alabamaImage = #imageLiteral(resourceName: "1920px-Alabama_Athletics_logo.svg.png")
    let maxLabel = UILabel()
    let minLabel = UILabel()

    @IBOutlet weak var auburnView: UIImageView!
    @IBOutlet weak var alabamaView: UIImageView!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        
        let value = sender.value
        auburnView.alpha = CGFloat(slider.maximumValue - value)
        alabamaView.alpha = CGFloat(value)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        slider.value = 0.5
        
        auburnView.image = auburnImage
        auburnView.alpha = 0.5
        
        alabamaView.image = alabamaImage
        alabamaView.alpha = 0.5
        
    }
    func calcSlider() {
        
    }

}

