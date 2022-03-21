//
//  thirdViewController.swift
//  Homework 3
//
//  Created by Мустафа Натур on 20.03.2022.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var thirdScoreLabel: UILabel!
    
    var results: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let check = results {
            thirdScoreLabel.text = "Your score: \(check)"
        } else {
            thirdScoreLabel.text = "Your score: 0"
        }
        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation
}
