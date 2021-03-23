//
//  ViewController.swift
//  TrafficLight
//
//  Created by Mac on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var redLightView: UIView!
    
    @IBOutlet weak var trafficLightButton: UIButton!
    
    enum trafficLights {
        case off
        case green
        case yellow
        case red
    }
    
    var trafficLightWorks = trafficLights.off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        redLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = greenLightView.frame.size.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.height / 2
        redLightView.layer.cornerRadius = redLightView.frame.size.height / 2
        
        trafficLightButton.layer.cornerRadius = trafficLightButton.frame.size.height / 1.85
    }

    @IBAction func trafficLightButtonTapped() {
        switch trafficLightWorks {
        case .off:
            trafficLightButton.setTitle("NEXT", for: .normal)
            greenLightView.alpha = 1
            trafficLightWorks = .green
        case .green:
            greenLightView.alpha = 0.3
            yellowLightView.alpha = 1
            trafficLightWorks = .yellow
        case .yellow:
            yellowLightView.alpha = 0.3
            redLightView.alpha = 1
            trafficLightWorks = .red
        case .red:
            redLightView.alpha = 0.3
            greenLightView.alpha = 1
            trafficLightWorks = .green
        }
    }
    
}

