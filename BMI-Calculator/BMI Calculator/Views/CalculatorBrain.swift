//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Eduardo Rodrigues on 19.06.24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more please!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You're fit!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less please!", color: UIColor.red)
        }
    }
}
