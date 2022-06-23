import Foundation

struct CalculatorBrain {
    
    var bmiValue:Float
    
    mutating func calculateBMI(height:Float , weight:Float){
        bmiValue = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmiValue)
    }
    
}
