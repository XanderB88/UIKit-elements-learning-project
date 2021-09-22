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
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var segmentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Label
        textLabel.isHidden = true
        textLabel.font = textLabel.font.withSize(14)
        textLabel.textColor = .white
        //Button
        buttonLabel.setTitle("Show label", for: .normal)
        buttonLabel.setTitleColor(.white, for: .normal)
        buttonLabel.backgroundColor = .black
        buttonLabel.layer.cornerRadius = 5
        
//        segmentLabel
        segmentLabel.text = "First segment is selected"
        segmentLabel.textColor = .red
        segmentLabel.font = segmentLabel.font.withSize(14)
        segmentLabel.textAlignment = .center
        segmentLabel.numberOfLines = 2
        
//        segmented control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }
    //Actions for button
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
    
//    Actions for segmented control
    @IBAction func chosenSegment(_ sender: UISegmentedControl) {
        
        switch segmentedControl.selectedSegmentIndex {
            case 0:
                segmentLabel.text = "First segment is selected"
                segmentLabel.textColor = .red
            case 1:
                segmentLabel.text = "Second segment is selected"
                segmentLabel.textColor = .blue
            case 2:
                segmentLabel.text = "Third segment is selected"
                segmentLabel.textColor = .green
            default:
                print("Something went wrong")
        }
        
    }
}

