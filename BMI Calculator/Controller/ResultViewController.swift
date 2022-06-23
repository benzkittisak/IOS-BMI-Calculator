//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Kittisak Panluea on 23/6/2565 BE.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    
    @IBOutlet weak var bmiLB: UILabel!
    @IBOutlet weak var adviceLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiLB.text = bmiValue
        view.backgroundColor = color
        adviceLB.text = advice
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
//        ทีนี้พอกด Recalculate ให้มันปิดหน้านี้โดยใช้ คือๆกันกับ finish() ใน android แหละมั่งนะ
        self.dismiss(animated: true)
    }
  
}
