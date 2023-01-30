//
//  ViewController.swift
//  BMICALCULATOR
//
//  Created by Yavuz Yerer on 22.01.2023.
//

import UIKit

class CalculateViewController: UIViewController {

    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
    }

    @IBAction func HeightChangePressed(_ sender: UISlider) {
        let height = String(format: "%.2f",sender.value)
        heightText.text = "\(height)m"

    }
    
    @IBAction func WeightChangePressed(_ sender: UISlider) {
        let weight = String(format: "%.0f",sender.value)
        weightText.text = "\(weight)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = WeightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
        
        
            
        }
    override func prepare (for segue : UIStoryboardSegue,sender :Any?){
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

