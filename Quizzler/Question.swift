//
//  Question.swift
//  Quizzler
//
//  Created by Narahari on 5/25/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
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
