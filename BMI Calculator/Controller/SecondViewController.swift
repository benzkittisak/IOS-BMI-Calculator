//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Kittisak Panluea on 23/6/2565 BE.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        .red ย่อมาจาก UIColor.red ที่เราเขียน .red ได้เลยเพราะว่าตัว backgroundColor มันรู้ว่ามันต้องไปเอาสีมาจาก
//        คลาสไหน ดังนั้นเราไม่ต้องใส่ UIColor ไว้ก็ได้
        view.backgroundColor = .systemBlue
        
        let label = UILabel()
        label.text = bmiValue
        
//        CGRect = Core Graphic Reactangle สร้างกรอบน่ะ
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
//        เอา label ไปใส่บนหน้าจอ
//        addSubView คือการเอาตัว view ขึ้นไปแสดงที่ parent view
//        ทีนี้ปกติเราจะต้องส่ง view ไปแต่ทำไม label ถึงส่งไปได้ล่ะ เหตุผลเพราะว่า UILabel มันสืบทอดคุณสมบัติมาจาก UIView
//        มันเลยส่งเข้าไปเพิ่ม View ได้โดยตรงเลย
        view.addSubview(label)
    }
    
}
