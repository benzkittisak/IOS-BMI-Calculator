import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    
    
    mutating func calculateBMI(height:Float , weight:Float){
        let bmiValue = weight / pow(height, 2)
//        bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color:.systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color:.systemRed)
        }
    }
    
    func getBMIValue() -> String{
        //        ?? เหมือนใน js แหละถ้า bmiValue ไม่ได้เป็น nil ก็ให้ใช้ค่าของ bmiValue แต่ถ้ามันเป็น nil ก็ให้ใช้ 0.0 แทน
        let bmiValueToString = bmi?.value ?? 0.0
        return String(format: "%.1f", bmiValueToString)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "--"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .systemBlue
    }
    
}
