//
//  Answers.swift
//  AssignmentA1New
//
//  Created by Zomato on 16/07/20.
//  Copyright © 2020 Zomato. All rights reserved.
//

import Foundation

struct Answers {
    
    static var ansIndex = 0
    var ans = ["8","jupiter","venus","saturn","earth"]
    
    
    func checkAns(_ userAns:String)->Bool{
        if Answers.ansIndex<ans.count && userAns.lowercased()==ans[Answers.ansIndex]{
            return true
        }
        return false
        
    }

}
