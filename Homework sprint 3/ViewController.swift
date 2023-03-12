//
//  ViewController.swift
//  Homework sprint 3
//
//  Created by Wood Baze on 12.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var historyTextLable: UITextView!
    
    var x = 0
    func publicTime() -> String {
        var date = Date()
        var calendar = Calendar.autoupdatingCurrent
        var hours = calendar.component(.hour, from: date)
        var minets = calendar.component(.minute, from: date)
        var seconds = calendar.component(.second, from: date)
        var time = "\(hours):\(minets):\(seconds)"
        return time
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterLabel.text = "Значение счётчика: \(x)"
        plusButton.backgroundColor = .red
        minusButton.backgroundColor = .blue
        historyTextLable.
        
        
    }
    

    @IBAction func pressPlusButton(_ sender: Any) {
        x += 1
        print(x)
        counterLabel.text = "Значение счётчика: \(x)"
        historyTextLable.insertText("\n \(publicTime()): значение изменено на +1")
        
    }
    
    @IBAction func pressMinusButton(_ sender: Any) {
        if x <= 0 {
            x = 0
            counterLabel.text = "Значение счётчика: \(x)"
            historyTextLable.insertText("\n \(publicTime()): попытка уменьшить значение счётчика ниже 0")
        } else {
            x -= 1
            counterLabel.text = "Значение счётчика: \(x)"
            historyTextLable.insertText("\n \(publicTime()): значение изменено на -1")
        }
    }
    
    @IBAction func pressReset(_ sender: Any) {
        x = 0
        counterLabel.text = "Значение счётчика: \(x)"
        historyTextLable.insertText("\n \(publicTime()): значение сброшено")
    }
    
    
}

