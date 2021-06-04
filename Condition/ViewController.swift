//
//  ViewController.swift
//  Condition
//
//  Created by 王冊 on 2021/5/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var appearance: UITextField!
    @IBOutlet weak var kindness: UISlider!
    @IBOutlet weak var fraction: UILabel!
    @IBOutlet weak var humor: UISwitch!
    @IBOutlet weak var age: UISegmentedControl!
    //圖片
    @IBOutlet weak var okImageView: UIImageView!
    @IBOutlet weak var noImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    @IBAction func appearance(_ sender: UITextField) {
        
    }
    
    //分數
    var score:Int = 1
    @IBAction func rangeSlider(_ sender: UISlider) {
        fraction.isHidden = false
        score = Int(sender.value)
        fraction.text = "\(score)"
    }
    
    @IBAction func yesNoSwitch(_ sender: UISwitch) {
        if humor.isOn{
            okImageView.isHidden = false
            noImageView.isHidden = true
        }else{
            noImageView.isHidden = false
            okImageView.isHidden = true
        }
    }
    
    @IBAction func restartButtonrestartrestart(_ sender: UIButton) {
        gender.selectedSegmentIndex = 0
        appearance.text = ""
        kindness.value = 0
        fraction.text = String(0)
        humor.isOn = false
        age.selectedSegmentIndex = 0
        okImageView.isHidden = true
        noImageView.isHidden = true
        self.view.endEditing(true)
    }
}

