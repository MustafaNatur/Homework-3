//
//  firstViewController.swift
//  Homework 3
//
//  Created by Мустафа Натур on 20.03.2022.
//

import UIKit

class firstViewController: UIViewController {

    
    @IBOutlet weak var firstScoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backToFirstScreen(_ segue: UIStoryboardSegue) {
        guard let thirdVC = segue.source as? thirdViewController else {
            return
        }
        
        
        if let check2 = thirdVC.results {
            firstScoreLabel.text = "Last score: \(check2)"
        }
        else {
            firstScoreLabel.text = "Your score: 0"
        }
    }

    
    // MARK: - Navigation
    


}
