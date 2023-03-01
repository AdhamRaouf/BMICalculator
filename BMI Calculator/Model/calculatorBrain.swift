    //
    //  calculatorBrain.swift
    //  BMI Calculator
    //
    //  Created by Adham Raouf on 07/02/2023.
    //  Copyright © 2023 Angela Yu. All rights reserved.
    //

import UIKit


struct CalculatorBrain {
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let BMITo1DecimalPlace  = String(format: "%.2f", bmi?.value ?? 0.0)
            return BMITo1DecimalPlace
       
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Thear is no advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
    mutating func calculateBMI(height:Float, weight:Float) {
        let BMIValue = weight / (height * height)

        if BMIValue < 18.5 {
            bmi = BMI(value: BMIValue, advice: "eat more pies", color: UIColor.blue)
        } else if BMIValue < 24.9 {
            bmi = BMI(value: BMIValue, advice: "fit as a fiddel", color: UIColor.green)
        } else if BMIValue >= 25 && BMIValue < 43 {
            bmi = BMI(value: BMIValue, advice: "eat less pies", color: UIColor.red)
        } else {
            bmi = BMI(value: BMIValue, advice: "Thear Is No Advice", color: UIColor.black)
        }
            
        print(String(format: "%.2f", BMIValue))
            
    }
}

