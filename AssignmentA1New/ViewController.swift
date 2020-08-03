//
//  ViewController.swift
//  AssignmentA1New
//
//  Created by Zomato on 16/07/20.
//  Copyright © 2020 Zomato. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    
    var ques = ["How Many Planets are there in the solar system",
    "Name the largest planet",
    "Name the hottest planet",
    "Name the planet with has maximum moons",
    "Name the planet where life exists"]
    
    var ans = ["8","jupiter","venus","saturn","earth"]
    
    static var index:Int = 0
    
    static var timeCount = 0
    
    
    @IBOutlet weak var QuesLabel: UILabel!
    
    
    @IBOutlet weak var AnsTextField: UITextField!
    
    static var score: Int = 0
    
    
    @IBAction func SubmitBtn(_ sender: Any) {
        
        
        if checkIfQuizEnded(ViewController.index){
            
          showResultScreen()
            
        }
        
        guard let  user_ans = AnsTextField.text else {
            return
        }
        if user_ans=="" {
            return
        }
        print("userans: \(user_ans)")
        if ViewController.index-1<ques.count && ans[ViewController.index-1]==user_ans.lowercased() {
            ViewController.score = ViewController.score+1
            print("score: \(ViewController.score)")
        }
        showNextQues(ViewController.index)
        
    }
    
    
    @IBAction func SkipBtn(_ sender: Any) {
        if checkIfQuizEnded(ViewController.index){
                   
                 showResultScreen()
                   
        }
        showNextQues(ViewController.index)
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ViewController.index = 0
        
        startTimer()
        
      
        
        showNextQues(ViewController.index)
        
        
    }
    
    func startTimer(){
          Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTimeCount), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimeCount(){
        ViewController.timeCount += 1
    }
    
    
    
    
    
    func showNextQues(_ index: Int){
        if index<ques.count{
            AnsTextField.text = ""
            QuesLabel.text = ques[index]
            ViewController.index += 1
        }
    }
    
    
    func checkIfQuizEnded(_ index:Int)->Bool{
        if index<ques.count{
            return false
        }
        return true
    }
    
    func showResultScreen(){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

                  let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
                  navigationController?.pushViewController(nextViewController, animated:true)
    }


}

