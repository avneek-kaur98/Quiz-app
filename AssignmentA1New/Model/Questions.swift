//
//  Questions.swift
//  AssignmentA1New
//
//  Created by Zomato on 16/07/20.
//  Copyright © 2020 Zomato. All rights reserved.
//

import Foundation


protocol QuestionDelegate{
    func quizEnded()->Bool
    
}


struct Questions{
    
    static var quesIndex = 0
    
     var questionDelegate: QuestionDelegate?
    
    var ques = ["How Many Planets are there in the solar system",
    "Name the largest planet",
    "Name the hottest planet",
    "Name the planet with has maximum moons",
    "Name the planet where life exists"]
    
    
    func showNextQues()->String{
        
        if Questions.quesIndex<ques.count{
            Questions.quesIndex += 1
            
            return ques[Questions.quesIndex]
        }
        
        
        return ""
        
        
    }
    
    
    
    
}
