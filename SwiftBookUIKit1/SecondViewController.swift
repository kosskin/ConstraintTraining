//
//  SecondViewController.swift
//  SwiftBookUIKit1
//
//  Created by Валентин Коскин on 03.06.2022.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    var labelIsHidden = false
    lazy var labelHello: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.textAlignment = .center
        label.text = "Hello"
        label.isHidden = labelIsHidden
        //label.font = UIFont.systemFont(ofSize: 35)
        label.font = UIFont(name: "Times New Roman", size: 25)
        return label
    }()
    
    let action1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Action1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.addTarget(self, action: #selector(action1PrintLabel), for: .touchUpInside)
        return button
    }()
    
    let action2: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Action2", for: .normal)
        button.backgroundColor = .gray
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.white, for: .selected)
        return button
    }()
    
    let clearButton: UIButton = {
        let button = UIButton()
        button.setTitle("hi", for: .normal)
        button.isHidden = false
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        button.setTitleColor(.red, for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        button.addTarget(self, action: #selector(button1Action), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setConstraints()
        
    }
    
    @objc func action1PrintLabel() {
        if labelHello.text == "Hello" {
            labelHello.text = "No Hello"
        }
        else {
            labelHello.text = "Hello"
        }
    }
    
    @objc func button1Action(){
        if labelIsHidden {
            labelIsHidden = false
        }
        else {
            labelIsHidden = true
        }
        labelHello.isHidden = labelIsHidden
    }
    
    func configureUI() {
        view.backgroundColor = .green
        view.addSubview(labelHello)
        view.addSubview(action1)
        view.addSubview(action2)
        view.addSubview(clearButton)
    }
    
    func setConstraints() {
        labelHello.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        labelHello.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelHello.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        labelHello.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        clearButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        clearButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        clearButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        action2.bottomAnchor.constraint(equalTo: clearButton.topAnchor, constant: -40).isActive = true
        action2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        action2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        action1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        action1.bottomAnchor.constraint(equalTo: action2.topAnchor, constant: -25).isActive = true
        action1.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setConstrainsWithSnapKit() {
        labelHello.snp.makeConstraints { (make) in
            make.top.leading.right.equalToSuperview().offset(20)
            make.bottom.equalTo(action1.snp.top).offset(200)
            make.top.equalTo(action2.snp.bottom).inset(20)
        }
    }
}

//unowned var value = value2.object

