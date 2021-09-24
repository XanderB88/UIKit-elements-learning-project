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
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //       Label
        textLabel.isHidden = true
        textLabel.font = textLabel.font.withSize(14)
        textLabel.textColor = .white
        //       Button
        buttonLabel.setTitle("Show label", for: .normal)
        buttonLabel.setTitleColor(.white, for: .normal)
        buttonLabel.backgroundColor = .black
        buttonLabel.layer.cornerRadius = 5
        
        //        Label for segmented control and slider
        slider.value = 1
        segmentLabel.text = String(slider.value)
        segmentLabel.textColor = .red
        segmentLabel.font = segmentLabel.font.withSize(18)
        segmentLabel.textAlignment = .center
        segmentLabel.numberOfLines = 2
        
        //        Segmented control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
        
        //        Slider
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .yellow
        slider.minimumValueImage = UIImage(systemName: "seal")
        slider.maximumValueImage = UIImage(systemName: "seal.fill")
        
//        TextField
        textField.placeholder = "Type your name"
        textField.clearButtonMode = .whileEditing
        
    }
    //    Actions for button
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
    
    
    @IBAction func sliderAcion(_ sender: UISlider) {
        segmentLabel.text = String(sender.value)
        
        let backgroundColor = self.view.backgroundColor
        
        self.view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(sender.value))
    }
    
    
  
    @IBAction func buttonTextFPressed(_ sender: UIButton) {
        
        guard textField.text?.isEmpty == false else { return }
       
        if let _ = Double(textField.text!) {
            
            let alert = UIAlertController(title: "Wrong format", message: "Please enter text", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        } else {
            segmentLabel.text = textField.text
            textField.text = ""
        }
    }
    
    @IBAction func changedPicker(_ sender: UIDatePicker) {
        
        let dateFormater = DateFormatter()
        
        dateFormater.dateStyle = .full
        let dateValue = dateFormater.string(from: sender.date)
        
        segmentLabel.text = dateValue
        segmentLabel.textColor = .black
    }
    
}

