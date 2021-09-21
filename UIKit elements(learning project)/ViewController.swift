//
//  ViewController.swift
//  UIKit elements(learning project)
//
//  Created by Alexander on 21.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.isHidden = true
        textLabel.font = textLabel.font.withSize(14)
        textLabel.textColor = .white
        
        buttonLabel.setTitle("Show label", for: .normal)
        buttonLabel.setTitleColor(.white, for: .normal)
        buttonLabel.backgroundColor = .black
        buttonLabel.layer.cornerRadius = 5
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if textLabel.isHidden {
            textLabel.isHidden = false
            textLabel.text = "Show"
            
            buttonLabel.setTitle("Clear", for: .normal)
            buttonLabel.backgroundColor = .red
        } else {
            textLabel.isHidden = true
            
            buttonLabel.setTitle("Show label", for: .normal)
            buttonLabel.backgroundColor = .black
            textLabel.isHidden = true
        }
    }
    
}

