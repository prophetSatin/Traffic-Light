//
//  ViewController.swift
//  Traffic Light
//
//  Created by Илья on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redColour: UIView!
    @IBOutlet var yellowColour: UIView!
    @IBOutlet var greenColour: UIView!
    @IBOutlet var toggleButton: UIButton!
    
    var indicator = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColour.layer.cornerRadius = 60
        redColour.alpha = 0.3
        
        yellowColour.layer.cornerRadius = 60
        yellowColour.alpha = 0.3
        
        greenColour.layer.cornerRadius = 60
        greenColour.alpha = 0.3
        
    }

    @IBAction func colourSwapAction(_ sender: Any) {
        switch indicator {
        case 1:
            toggleButton.setTitle("Next", for: .normal)
            greenColour.alpha = 0.3
            redColour.alpha = 1
            indicator += 1
        case 2:
            redColour.alpha = 0.3
            yellowColour.alpha = 1
            indicator += 1
        case 3: greenColour.alpha = 1
            yellowColour.alpha = 0.3
            greenColour.alpha = 1
            indicator = 1
        default:
            redColour.alpha = 0.3
            yellowColour.alpha = 0.3
            greenColour.alpha = 0.3
            
        }
    }
    
}

