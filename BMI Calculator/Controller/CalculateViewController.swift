//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Kittisak Panluea on 23/6/2565 BE.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLB: UILabel!
    @IBOutlet weak var weightLB: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func hightSliderChanged(_ sender: UISlider) {
        //        round เอามาใช้เพื่อเปลี่ยนทศนิยมเป็น 2 ตำแหน่งน่ะ ถ้าอยากได้ 1 ตำแหน่งก็ * 10 / 10.0 เอาไรงี้
        //        let value = round(sender.value * 100) / 100.0
        //        print(value)
        //        หรือจะทำแบบนี้ก็ได้เพื่อให้มันเป็นทศนิยม 2 ตำแหน่ง
        //        print(String(format: "%.2f", sender.value))
        
        let height = String(format: "%.2f", sender.value)
        heightLB.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        //        น้ำหนักเราต้องการเป็นจำนวนเต็มฉนั้นก็ทำการแปลงหน่วยมันซะ
        //        print(Int(sender.value))
        let weight = String(format: "%.0f", sender.value)
        weightLB.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height:height , weight:weight)
        
        //        BMI formular
//        bmi = weight / pow(height, 2)
        
//         ใช้ SecondViewController.swift
        //        ทีนี้เราจะเขียนต่อว่าถ้ากดปุ่มคำนวณมาจะให้มันไปเรียกหน้าที่ 2 มาแสดง
        //        let secondVC = SecondViewController()
        //
        ////        ส่งค่าจากตัวแปร bmi ไปที่หน้าที่สอง
        //        secondVC.bmiValue = String(format: "%0.1f", bmi)
        //
        ////        เอาหน้าจอมาที่สองมาแสดงทับหน้าจอแรก
        //        self.present(secondVC, animated: true , completion: nil)
        
//        ใช้ตัว ResultViewController -> Cocoa Touch
//        goToResult มาจากการตั้ง indentifier ใน segue ตอนลากเชื่อมต่อหน้าไปยัง ResultViewController
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    //        ทีนี้เราจะส่งค่าไปให้อีกหน้าด้วยการใช้ func นี้
    override func prepare(for segue:UIStoryboardSegue , sender:Any?){
//        ต้องเช็คก่อนแหละนะเพราะว่าถ้ามันมีหลาย ๆ หน้าเข้าจะได้รู้ว่ามันต้องไปยุ่งกับหน้าไหน
        if segue.identifier == "goToResult" {
//            ให้มันอ้างอิงไปหาหน้า Result
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

