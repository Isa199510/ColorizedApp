//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Иса on 01.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLabelOutlet: UILabel!
    @IBOutlet var greenLabelOutlet: UILabel!
    @IBOutlet var blueLabelOutlet: UILabel!
    
    @IBOutlet var viewOutlet: UIView!
    
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // начальные значения можно было и не задавать ))
        redSliderOutlet.value = 0.4
        greenSliderOutlet.value = 0.6
        blueSliderOutlet.value = 0.3
        
        setupSliders()
    }

    
    
    
    // MARK: - Slider Actions
    
    @IBAction func redSliderACtion() {
        setupSliders()
    }
    
    
    @IBAction func greenSliderAction() {
        setupSliders()
    }
    
    
    @IBAction func blueSliderActon() {
        setupSliders()
    }
    
    // MARK: - Setup sliders
    private func setupSliders() {
        redLabelOutlet.text = String(format: "%1.2f", redSliderOutlet.value)
        greenLabelOutlet.text = String(format: "%1.2f", greenSliderOutlet.value)
        blueLabelOutlet.text = String(format: "%1.2f", blueSliderOutlet.value)
        
        viewOutlet.backgroundColor = UIColor(
            red: CGFloat(redSliderOutlet.value),
            green: CGFloat(greenSliderOutlet.value),
            blue: CGFloat(blueSliderOutlet.value),
            alpha: 1.0
        )
        
    }
    
}

