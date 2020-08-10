//
//  ViewController.swift
//  課題2
//
//  Created by miyazawaryohei on 2020/08/10.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    @IBOutlet var segment: UISegmentedControl!
    @IBOutlet var result: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calc(_ sender: Any) {
        let text1 = Double(textField1.text!) ?? 0
        let text2 = Double(textField2.text!) ?? 0
        let seg = segment.selectedSegmentIndex
        
        switch seg {
            
        case 0:
            result.text = String(text1 + text2)
            break
            
        case 1:
            result.text = String(text1 - text2)
            break
            
        case 2:
            result.text = String(text1 * text2)
            break
            
        case 3:
            if text2 == 0{
                result.text = "割る数には0以外を入力してください"
            }else{
                result.text = String(text1 / text2)
            }
            break
        default: break
            
        }
    }
    
}

