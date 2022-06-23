import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    
    mutating func calculateBMI(height:Float , weight:Float){
        let bmiValue = weight / pow(height, 2)
//        bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:#colorLiteral(red: 173, green: 216, blue: 230, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color:#colorLiteral(red: 144, green: 238, blue: 144, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color:#colorLiteral(red: 240, green: 128, blue: 128, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        //        ?? เหมือนใน js แหละถ้า bmiValue ไม่ได้เป็น nil ก็ให้ใช้ค่าของ bmiValue แต่ถ้ามันเป็น nil ก็ให้ใช้ 0.0 แทน
        let bmiValueToString = bmi?.value ?? 0.0
        return String(format: "%.1f", bmiValueToString)
    }
    
}
