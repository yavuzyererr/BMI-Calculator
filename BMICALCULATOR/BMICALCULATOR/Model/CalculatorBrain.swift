//
//  CalculatorBrain.swift
//  BMICALCULATOR
//
//  Created by Yavuz Yerer on 24.01.2023.
//

 
import UIKit

struct CalculatorBrain{
    var bmi: Bmi?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ??  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height : Float , weight : Float) {
        let bmiValue = weight / (height * height)
        let color = (underweight : #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) , healthy : #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) , overweight : #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        if bmiValue < 18.5 {
            bmi = Bmi(value: bmiValue, advice: "Eat A lot of pasta", color:color.underweight)
        }else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = Bmi(value: bmiValue, advice: "Keep going eat same", color:color.healthy)
        }else{
            bmi = Bmi(value:bmiValue, advice: "Eat less pasta", color: color.overweight)
        }
    
    
    }
}
