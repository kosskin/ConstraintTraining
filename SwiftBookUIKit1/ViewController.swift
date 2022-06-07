//
//  ViewController.swift
//  SwiftBookUIKit1
//
//  Created by Валентин Коскин on 03.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet var actionButtons: [UIButton]!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        label.font = label.font.withSize(25)
        
        button.isHidden = true
        
        for button in actionButtons {
            button.backgroundColor = .green
            button.setTitleColor(.blue, for: .normal)
        }
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        label.isHidden = false
        button.isHidden = false
        
        if sender.tag == 0 {
            label.text = "Hello world"
            label.textColor = .red
        }
        else if sender.tag == 1 {
            label.text = "Hi there"
            label.textColor = .blue
        }
        else if sender.tag == 2 {
            label.isHidden = true
            button.isHidden = true
        }
    }
}






