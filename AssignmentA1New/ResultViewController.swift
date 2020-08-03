//
//  ResultViewController.swift
//  AssignmentA1New
//
//  Created by Zomato on 16/07/20.
//  Copyright © 2020 Zomato. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        resultLabel.text = "You have scored \(ViewController.score) out of 5"
        
        
        timerLabel.text = "Total time taken: \(ViewController.timeCount) seconds"
        
    }
    

   

}
