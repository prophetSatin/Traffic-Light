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
        
        toggleButton.layer.cornerRadius = toggleButton.frame.width / 5
        
        redColour.layer.cornerRadius = redColour.frame.width / 2
        redColour.alpha = 0.3
        
        yellowColour.layer.cornerRadius = yellowColour.frame.width / 2
        yellowColour.alpha = 0.3
        
        greenColour.layer.cornerRadius = greenColour.frame.width / 2
        greenColour.alpha = 0.3
        
    }

    @IBAction func colourSwapAction(_ sender: Any) {
        switch indicator {
        case 1:
            toggleButton.setTitle("Red", for: .normal)
            greenColour.alpha = 0.3
            redColour.alpha = 1
            indicator += 1
        case 2:
            toggleButton.setTitle("Yellow", for: .normal)
            redColour.alpha = 0.3
            yellowColour.alpha = 1
            indicator += 1
        case 3:
            toggleButton.setTitle("Green", for: .normal)
            greenColour.alpha = 1
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

