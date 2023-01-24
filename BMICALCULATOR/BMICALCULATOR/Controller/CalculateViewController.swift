//
//  ViewController.swift
//  BMICALCULATOR
//
//  Created by Yavuz Yerer on 22.01.2023.
//

import UIKit

class CalculateViewController: UIViewController {

    
    var bmiValue = "0.0"
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var WeightSlider: UISlider!
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
      
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
        let bmi = weight / (height*height)
        bmiValue = String(format: "%.1f", bmi)
        performSegue(withIdentifier: "goToResult", sender: self)
        
        
            
        }
    override func prepare (for segue : UIStoryboardSegue,sender :Any?){
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
            
        }
    }
}

