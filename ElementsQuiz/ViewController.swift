//
//  ViewController.swift
//  ElementsQuiz
//
//  Created by Tarang Srivastava on 1/25/19.
//  Copyright © 2019 Tarang Srivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }
    
    func updateElement() {
        answerLabel.text = "?"
        imageView.image = UIImage(named: elementList[currentElementIndex])
    }
    
    @IBAction func gotoNextElement(_ sender: UIButton) {
        currentElementIndex = (currentElementIndex+1) % elementList.count
        updateElement()
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
}

