//
//  ViewController.swift
//  Quizzler
//
//  Created by Narahari Battala on 03/20/2018.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions=QuestionBank()
    var questionAnswer:Bool = false
    var questionNumber:Int = 0
    var score:Int = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let first = allQuestions.list[questionNumber]
        questionLabel.text = first.text
        scoreLabel.text = "Score:\(score)"
        progressLabel.text = "\(questionNumber+1)/13"
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
  
        if(sender.tag == 1) {
            
            questionAnswer = true
        }
        else if (sender.tag == 2){
            
            questionAnswer = false
        }
        
        checkAnswer()
        questionNumber+=1
        nextQuestion()
    }
    
    
    func updateUI() {
      
        progressLabel.text = "\(questionNumber+1)/13"
        scoreLabel.text = "Score:\(score)"
        progressBar.frame.size.width = (view.frame.size.width)/13 * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
    
        if(questionNumber < allQuestions.list.count)
        {
        updateUI()
        questionLabel.text = allQuestions.list[questionNumber].text
        }
        
        else {
            
            let alert = UIAlertController(title: "Awesome", message: "You have finished all the questions. Do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { action in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
    }
    }
    func checkAnswer() {
        
        if(allQuestions.list[questionNumber].correctAnswer == questionAnswer)
        {
            score += 1
        }
        
        updateUI()
    }
    
    
    func startOver() {
       
        questionNumber = 0
        score = 0
        updateUI()
        nextQuestion()
        
    }
}
