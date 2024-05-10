//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Андрей Ордынский on 10.05.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var resultColor: UIView!
    
    @IBOutlet var labelForRedSlider: UILabel!
    @IBOutlet var labelForGreenSlider: UILabel!
    @IBOutlet var labelForBlueSlider: UILabel!
    
    @IBOutlet var valueForRedSlider: UILabel!
    @IBOutlet var valueForGreenSlider: UILabel!
    @IBOutlet var valueForBlueSlider: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliders()
        setupLabels()
        setupResultColor()
    }
    
    @IBAction func changeRGBForView(_ slider: UISlider) {
        switch slider.minimumTrackTintColor {
        case UIColor.red:
            valueForRedSlider.text = String(format: "%.2f", redSlider.value)
        case UIColor.green:
            valueForGreenSlider.text = String(format: "%.2f", greenSlider.value)
        default:
            valueForBlueSlider.text = String(format: "%.2f", blueSlider.value)
        }
        
        setupResultColor()
    }
}

//MARK: - Setup UI
extension ViewController {
    
    private func setupResultColor() {
        resultColor.layer.cornerRadius = 20
        
        resultColor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
    
    private func setupLabels() {
        labelForRedSlider.text = "Red:"
        labelForRedSlider.font = UIFont.systemFont(ofSize: 13)
        labelForGreenSlider.text = "Green:"
        labelForGreenSlider.font = UIFont.systemFont(ofSize: 13)
        labelForBlueSlider.text = "Blue:"
        labelForBlueSlider.font = UIFont.systemFont(ofSize: 13)
        
        valueForRedSlider.text = String(format: "%.2f", redSlider.value)
        valueForRedSlider.font = UIFont.systemFont(ofSize: 13)
        valueForGreenSlider.text = String(format: "%.2f", greenSlider.value)
        valueForGreenSlider.font = UIFont.systemFont(ofSize: 13)
        valueForBlueSlider.text = String(format: "%.2f", blueSlider.value)
        valueForBlueSlider.font = UIFont.systemFont(ofSize: 13)
    }
    
    private func setupSliders() {
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0.5
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0.5
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0.5
        blueSlider.minimumTrackTintColor = .blue
    }

}
