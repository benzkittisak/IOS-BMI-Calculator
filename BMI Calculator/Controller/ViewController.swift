//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Kittisak Panluea on 23/6/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLB: UILabel!
    @IBOutlet weak var weightLB: UILabel!
    
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
    }
}

