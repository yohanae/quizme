//
//  MusicQuestionBank.swift
//  quizme
//
//  Created by Macbook on 5/11/18.
//  Copyright © 2018 Yohana. All rights reserved.
//

import Foundation

class MusicQuestionBank {
    var musicQuestionList = [MusicTestQuestions]()
    init() {
         let musicQuestionListItems = MusicTestQuestions (musicText: "Hey there hot stuff! On a scale of 'hell no' to 'hell yeah', How do you feel about POP MUSIC?", musicAnswer: 0)
        musicQuestionList.append (musicQuestionListItems)
         musicQuestionList.append (MusicTestQuestions (musicText: "How do you feel about CLASSICAL MUSIC?" , musicAnswer: 0))
         musicQuestionList.append (MusicTestQuestions (musicText: "How do you feel about ROCK MUSIC?" , musicAnswer: 0))
         musicQuestionList.append (MusicTestQuestions (musicText: "How do you feel about COUNTRY MUSIC?" , musicAnswer: 0))
        
    }
}
