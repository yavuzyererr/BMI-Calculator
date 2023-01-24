//
//  ResultViewController.swift
//  BMICALCULATOR
//
//  Created by Yavuz Yerer on 24.01.2023.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : String?
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var bmiResultSentence: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResult.text = bmiValue
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reCalculateButton(_ sender: UIButton) {
         dismiss(animated: true)
    }
    
    
}
