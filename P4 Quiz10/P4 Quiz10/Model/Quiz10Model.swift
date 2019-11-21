//
//  Quiz10Model.swift
//  P4 Quiz10
//
//  Created by g924 DIT UPM on 18/11/2019.
//  Copyright © 2019 g924 DIT UPM. All rights reserved.
//

import Foundation

struct QuizItem : Codable{
    let id:Int
    let question :String
    let answer: String
    let author : Author?
    let attachment:Attachment?
    let favourite:Bool
    let tips:[String]
    
    struct Author :Codable {
        let isAdmin:Bool?
        let username:String
        let photo:Attachment?
        
    }
    
    struct Attachment:Codable{
        let filename:String
        let mime:String
        let url:URL?
}
}

class Quiz10Model{
    
    var quizzes = [QuizItem]()
    
    
    func download(){
        
        
        //let TOKEN = "7a59787b4a3230fee7fc"
        let surl = "https://quiz.dit.upm.es/api/quizzes/random10wa?token=7a59787b4a3230fee7fc"
        
        guard let url = URL(string: surl) else{
            print("malo")
            return
            
        }
        
        
        
        do{
            
          let data = try Data(contentsOf: url)
            
          let decoder = JSONDecoder()
          
          let quizzes = try decoder.decode([QuizItem].self, from: data)
            
          self.quizzes = quizzes
            
            
        } catch {
            print("catapum")
        }
    }
    
    
    
}
