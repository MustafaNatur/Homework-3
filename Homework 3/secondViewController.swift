//
//  secondViewController.swift
//  Homework 3
//
//  Created by Мустафа Натур on 20.03.2022.
//

import UIKit


class secondViewController: UIViewController {

    @IBOutlet weak var secondScoreLabel: UILabel!
    @IBOutlet weak var GreenButton: UIButton!
    @IBOutlet weak var RedButton: UIButton!
    @IBOutlet weak var BlueButton: UIButton!
    var i = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func plusOne(){
        i = i + 1
        secondScoreLabel.text = "Score: \(i)"
    }
    
    func changeButton(){
        let arr = [GreenButton, RedButton, BlueButton]
        for i in arr {
            i?.isEnabled = false
        }
        let value = Int.random(in: 0...2)
        arr[value]?.isEnabled = true
    }
    
    @IBAction func buttonsTap(_ sender: Any) {
        plusOne()
        changeButton()
    }

    
    // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "showThirdScreen" {
             if let destinitionVC = segue.destination as? thirdViewController {
                 destinitionVC.results = "\(i)"
             }
         }
     }
}
