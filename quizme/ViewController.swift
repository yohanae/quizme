//
//  ViewController.swift
//  quizme
//
//  Created by Macbook on 5/10/18.
//  Copyright © 2018 Yohana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var musicQuestionLabel: UILabel!
    
  
    
    let allMusicTestQuestions = MusicQuestionBank()
    var pickedMusicAnswer : Int = 0
    var musicQuestionNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let firstMusicQuestion = allMusicTestQuestions.musicQuestionList[musicQuestionNumber]
        musicQuestionLabel.text = firstMusicQuestion.musicQuestionText
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    @IBAction func musicAnswerButton(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedMusicAnswer = 0
        }
        else if sender.tag == 2 {
            pickedMusicAnswer = 1
        }
        else if sender.tag == 3 {
            pickedMusicAnswer = 2
        }
        else if sender.tag == 4 {
            pickedMusicAnswer = 3
        }
        else if sender.tag == 5 {
            pickedMusicAnswer = 4
        }
         print(musicQuestionNumber)
        hateMusicCatagoryCheckpoint()
        otherMusicCatagoryCheckpoint()
        goToNextMusicQuestion()
        reachedEndOfMusicTest()
    }
    
  
    func hateMusicCatagoryCheckpoint() {
     let hateMusicCatagoryValue = allMusicTestQuestions.musicQuestionList[musicQuestionNumber].musicQuestionAnswer
        if hateMusicCatagoryValue == pickedMusicAnswer{
            print ("the user hates this music catagory")
        }
        else {
            print ("this music catagory has passed to the next round")
        }
    }

    func otherMusicCatagoryCheckpoint(){
        if pickedMusicAnswer == 1 {
            print ("the user doesnt like this music catagory")
        }
        else if pickedMusicAnswer == 2 {
            print ("the user feels neutral about this music catagory")
        }
        else if pickedMusicAnswer == 3 {
            print ("the user likes this music catagory")
        }
        else if pickedMusicAnswer == 4 {
            print ("the user loves this music catagory")
        }
    }
    

    func goToNextMusicQuestion() {
        musicQuestionNumber = musicQuestionNumber + 1
       }

    func reachedEndOfMusicTest() {
        if musicQuestionNumber <= 3 {
             musicQuestionLabel.text = allMusicTestQuestions.musicQuestionList[musicQuestionNumber].musicQuestionText
       }
        else {
            print ("user has reached the end of the music test")
            musicQuestionNumber = 0
       }
    }

}



















