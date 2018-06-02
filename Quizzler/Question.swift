//
//  Question.swift
//  Quizzler
//
//  Created by Narahari on 03/20/2018.
//

import Foundation

class Question {
    
    var text:String = ""
    var correctAnswer:Bool = false
    
    init(text:String, correctAnswer:Bool) {
        
        self.text=text
        self.correctAnswer=correctAnswer
    }
}
